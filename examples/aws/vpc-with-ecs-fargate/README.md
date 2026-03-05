# AWS VPC + ECS Fargate with StackReference (Dart)

This Dart translation keeps the original two-stack architecture:

1. `.` (this directory): creates the VPC with AWSX Crosswalk (`crosswalk-vpc`).
2. `./ecs-fargate`: creates ECS Fargate resources (`fargate-with-crosswalk-vpc`) and reads VPC outputs via `StackReference`.

## Run order

1. Deploy the VPC stack from this directory.
2. Deploy the ECS stack from `ecs-fargate`, setting config `mystackpath` to the fully qualified VPC stack name (`org/project/stack`).

## Required config

- VPC stack (`.`):
  - `vpc_name`
  - `zone_number`
  - `vpc_cidr`
- ECS stack (`./ecs-fargate`):
  - `mystackpath`
