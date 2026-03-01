# Cloud Run + Cloud SQL (Dart)

This example deploys a PostgreSQL Cloud SQL instance and a Cloud Run service configured with a database connection string.

## Current status

- Pulumi runtime is Dart (`Pulumi.yaml`).
- Program entrypoint is `bin/main.dart`.
- Dart package metadata is present (`pubspec.yaml`).

## Configuration

Required:

- `gcp:project`
- `gcp:region`
- `db-name`
- `db-password` (set as secret)

## Run

```bash
dart pub get
pulumi stack init dev
pulumi config set gcp:project <YOUR_GCP_PROJECT>
pulumi config set gcp:region <YOUR_GCP_REGION>
pulumi config set db-name <DB_NAME>
pulumi config set --secret db-password <DB_PASSWORD>
pulumi up
```

## Stack outputs

- `cloud_sql_instance_name`
- `cloud_run_url`

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
