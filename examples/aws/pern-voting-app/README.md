# PERN Stack Voting App (Dart baseline)

This Dart baseline deploys:

- VPC, subnets, and routing
- PostgreSQL RDS instance
- ECS cluster with two Fargate services (server/client placeholders)
- two Application Load Balancers
- `URL` output for the client load balancer

The original TypeScript example also:

- builds/pushes custom Docker images via `awsx.ecr.Image`
- provisions PostgreSQL schema via a custom dynamic provider

Those parts are not yet ported in this Dart baseline.

## Deploy

```bash
dart pub get
pulumi stack init voting-app
pulumi config set aws:region us-west-2
pulumi config set sql-admin-name <NAME>
pulumi config set --secret sql-admin-password <PASSWORD>
pulumi config set sql-user-name <NAME>
pulumi config set --secret sql-user-password <PASSWORD>
pulumi up
```

## Output

- `URL`

## Clean up

```bash
pulumi destroy
pulumi stack rm
```
