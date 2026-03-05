# Database Migration (Dart)

This example ports the upstream Go `database_migration` Automation API example
to Dart.

## Source

- `thirdparty/pulumi-automation-api-examples/go/database_migration/`

## What it demonstrates

- Provisioning a database stack with an inline Pulumi program.
- Reading deployment outputs (host/db credentials) from Automation API.
- Running application-level SQL migration steps in the same orchestration flow.

## Run

```bash
cd examples/automation/database-migration
dart run bin/main.dart
```

Destroy:

```bash
dart run bin/main.dart destroy
```

## Notes

- The migration phase uses the `mysql_client` Dart package to connect to the
  provisioned database endpoint and execute SQL statements.
- Database provisioning can take several minutes before endpoint readiness.

