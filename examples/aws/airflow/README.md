# RDS Postgres and Redis for Airflow (Dart)

This example provisions the core data-plane resources used by the Airflow stack:
- VPC + subnets + security group
- PostgreSQL (RDS)
- Redis (ElastiCache)
- ECS cluster scaffold

Config:
- `airflow:dbPassword` (required)

Outputs:
- `postgresHost`
- `redisHost`
