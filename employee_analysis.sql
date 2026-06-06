-- database banao
CREATE DATABASE IF NOT EXISTS employee_db;
USE employee_db;

-- table banao
CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    experience INT,
    performance VARCHAR(20)
);

-- data daalo
INSERT INTO employees (name, department, salary, experience, performance) VALUES
("Rahul Sharma", "IT", 55000, 3, "Good"),
("Priya Singh", "HR", 42000, 2, "Excellent"),
("Amit Kumar", "Finance", 61000, 5, "Good"),
("Neha Gupta", "IT", 70000, 6, "Excellent"),
("Rohit Verma", "Marketing", 38000, 1, "Average"),
("Sneha Joshi", "HR", 45000, 3, "Good"),
("Vikas Yadav", "IT", 80000, 8, "Excellent"),
("Pooja Tiwari", "Finance", 52000, 4, "Good"),
("Suresh Patel", "Marketing", 41000, 2, "Average"),
("Anjali Mehta", "IT", 67000, 5, "Good"),
("Deepak Raj", "HR", 39000, 1, "Average"),
("Kavita Sharma", "Finance", 74000, 7, "Excellent");

-- saara data dekho
SELECT * FROM employees;

-- total employees
SELECT COUNT(*) AS total_employees FROM employees;

-- average salary
SELECT AVG(salary) AS average_salary FROM employees;

-- highest salary wala employee
SELECT name, salary 
FROM employees 
ORDER BY salary DESC 
LIMIT 1;

-- lowest salary wala employee
SELECT name, salary 
FROM employees 
ORDER BY salary ASC 
LIMIT 1;

-- department wise average salary
SELECT department, 
       AVG(salary) AS avg_salary,
       COUNT(*) AS total_employees
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;

-- performance wise count
SELECT performance, 
       COUNT(*) AS count 
FROM employees 
GROUP BY performance;

-- experience wise salary
SELECT experience, 
       AVG(salary) AS avg_salary 
FROM employees 
GROUP BY experience 
ORDER BY experience;

-- IT department ke employees
SELECT name, salary, experience 
FROM employees 
WHERE department = "IT"
ORDER BY salary DESC;

-- 50000 se zyada salary wale
SELECT name, department, salary 
FROM employees 
WHERE salary > 50000
ORDER BY salary DESC;

-- excellent performance wale employees
SELECT name, department, salary 
FROM employees 
WHERE performance = "Excellent"
ORDER BY salary DESC;

-- department wise max aur min salary
SELECT department,
       MAX(salary) AS max_salary,
       MIN(salary) AS min_salary,
       AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- 5 saal se zyada experience wale
SELECT name, department, salary, experience 
FROM employees 
WHERE experience > 5
ORDER BY experience DESC;
