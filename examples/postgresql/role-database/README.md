# PostgreSQL Role + Database (Dart)

This Dart-first example uses `pulumi_postgresql` to create:

- A PostgreSQL role
- A PostgreSQL database owned by that role
- A database-level `CONNECT` grant for that role

## Prerequisites

- Reachable PostgreSQL server
- Provider config set for `postgresql` (for example host/user/password/database/port/sslmode)

Example:

```bash
pulumi config set postgresql:host 127.0.0.1
pulumi config set postgresql:port 5432
pulumi config set postgresql:username postgres
pulumi config set --secret postgresql:password postgres
pulumi config set postgresql:database postgres
pulumi config set postgresql:sslmode disable
```

## Optional config

```bash
pulumi config set roleName pulumi_app
pulumi config set databaseName pulumi_app_db
```

## Deploy

```bash
pulumi up
```

## Outputs

- `role`
- `database`

## Destroy

```bash
pulumi destroy --yes
```
