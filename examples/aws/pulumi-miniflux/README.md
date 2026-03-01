# Run an RSS Service with Miniflux (Dart)

This example deploys [Miniflux](https://miniflux.app/) on AWS Fargate with a PostgreSQL backend on RDS.

## Prerequisites

- Pulumi CLI
- Dart SDK
- AWS credentials configured for Pulumi

## Deploy

```bash
pulumi stack init dev
pulumi config set aws:region us-west-2
pulumi config set db_name miniflux
pulumi config set db_username miniflux
pulumi config set db_password <YOUR_PASSWORD> --secret
pulumi config set admin_username admin
pulumi config set admin_password <YOUR_PASSWORD> --secret
pulumi up
```

The stack exports `url`.

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
