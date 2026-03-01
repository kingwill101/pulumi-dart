# ECS Anywhere (Dart)

This example provisions ECS Anywhere control-plane resources on AWS:
- IAM roles/policies for SSM + ECS tasks
- SSM activation for external node registration
- ECS cluster, task definition, and ECS service (`EXTERNAL` launch type)
- CloudWatch log group

Config:
- `numberNodes` (optional, default `2`)

Outputs:
- `clusterName`
- `activationId`
