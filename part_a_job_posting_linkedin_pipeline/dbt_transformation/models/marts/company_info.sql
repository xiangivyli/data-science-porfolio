
with company as (
    select *
    from {{ ref('stg_company_info__companies') }}
),

employee as (
    select *
    from {{ ref('stg_company_info__employee_count') }}
)

select company.*,
        employee.employee_count,
        employee.follower_count
from company
left join employee
on company.company_id = employee.company_id

