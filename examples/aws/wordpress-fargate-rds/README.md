# WordPress Site in AWS Fargate with RDS DB Backend (Dart)

This example deploys WordPress on ECS Fargate with a MySQL backend on RDS.

## Prerequisites

- Pulumi CLI
- Dart SDK
- AWS credentials configured for Pulumi

## Deploy

```bash
pulumi stack init dev
pulumi config set aws:region us-west-2
pulumi up
```

Optional config values:

- `serviceName` (default `wp-fargate-rds`)
- `dbName` (default `wordpress`)
- `dbUser` (default `admin`)
- `dbPassword` (secret; if omitted, random password is generated)

## Outputs

- `webServiceUrl`
- `ecsClusterName`
- `databaseEndpoint`
- `databaseUserName`
- `databasePassword`

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
