use sakila;

select * from rental;

create table rentals_may(
    rental_id int default null, 
    rental_date datetime default null,
    inventory_id int default null,
    customer_id int default null,
    return_date datetime default null,
    staff_id int default null
    );

select * from rentals_may;
insert into rentals_may (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id)
select rental_id, rental_date, inventory_id, customer_id, return_date, staff_id 
from rental where rental_date like ('2005-05%');

create table rentals_june(
    rental_id int default null, 
    rental_date datetime default null,
    inventory_id int default null,
    customer_id int default null,
    return_date datetime default null,
    staff_id int default null
    );
    
select * from rentals_june;
insert into rentals_june (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id)
select rental_id, rental_date, inventory_id, customer_id, return_date, staff_id 
from rental where rental_date like ('2005-06%');

select * from rentals_may;
select count(rental_id), customer_id from rentals_may group by customer_id;

select * from rentals_june;
select count(rental_id), customer_id from rentals_june group by customer_id;















