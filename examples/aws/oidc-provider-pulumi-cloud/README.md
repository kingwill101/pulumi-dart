# AWS OIDC Pulumi program in Dart

Creates:
- AWS IAM OIDC provider + assumable admin role
- A Pulumi ESC environment configured for AWS OIDC login

## Required config

```bash
pulumi config set pulumiOrganization <your-org>
pulumi config set escProject aws
pulumi config set escEnvironmentName aws-oidc-admin
```

## Deploy

```bash
dart pub get
pulumi up
```

## Destroy

```bash
pulumi destroy
```
