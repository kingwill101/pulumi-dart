# MySQL User + Database (Dart)

This Dart-first example uses `pulumi_mysql` to create:

- A MySQL database
- A MySQL user
- A grant with common CRUD privileges on all tables in that database

## Prerequisites

- Reachable MySQL server
- Provider config set for `mysql`

Example:

```bash
pulumi config set mysql:endpoint 127.0.0.1:3306
pulumi config set mysql:username root
pulumi config set --secret mysql:password root
pulumi config set mysql:tls false
```

## Required stack config

```bash
pulumi config set --secret password change-me
```

## Optional stack config

```bash
pulumi config set databaseName pulumi_app
pulumi config set username pulumi_user
pulumi config set host %
```

## Deploy

```bash
pulumi up
```

## Outputs

- `database`
- `username`
- `host`

## Destroy

```bash
pulumi destroy --yes
```
