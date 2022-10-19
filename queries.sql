-- write your queries here
--Join the two tables so that every column and record appears, 
--regardless of if there is not an owner_id. Your output should look like this:

select * 
from owners o
full join vehicles v
on o.id = v.owner_id;

--Count the number of cars for each owner. 
--Display the owners first_name, last_name and count of vehicles. 
--The first_name should be ordered in ascending order. Your output should look like this:

select count(v.id), first_name, last_name
from owners o
join vehicles v
on o.id = v.owner_id
group by o.id
order by count;

--Count the number of cars for each owner and display the average price for each of the cars as integers. 
--Display the owners first_name, last_name, average price and count of vehicles. 
--The first_name should be ordered in descending order. 
--Only display results with more than one vehicle and an average price greater than 10000. 
--Your output should look like this:

select count(v.id) as count_veh, round(avg(v.price)) as avg_price, o.first_name, o.last_name
from owners o
join vehicles v
on o.id=v.owner_id

group by (o.first_name, o.last_name)
having count(v.id) > 1 and avg(v.price) > 10000
order by o.first_name desc;

