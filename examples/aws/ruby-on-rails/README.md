# Ruby on Rails Server Using Amazon EC2 (Dart baseline)

This Dart baseline deploys:

- one EC2 instance
- one wide-open security group (matching original example intent)
- user-data bootstrap script that installs Ruby/MySQL packages
- outputs for `vmIP` and `websiteURL`

## Deploy

```bash
dart pub get
pulumi stack init rails
pulumi config set aws:region us-west-2
pulumi config set dbUser <your-mysql-user>
pulumi config set --secret dbPassword <your-mysql-password>
pulumi config set --secret dbRootPassword <your-mysql-root-password>
pulumi up
```

## Outputs

- `vmIP`
- `websiteURL`

## Clean up

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
