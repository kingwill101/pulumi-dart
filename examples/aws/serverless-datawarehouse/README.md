# Serverless Datawarehouse (Dart baseline)

This Dart version provisions the core infrastructure shape:

- data warehouse S3 bucket
- Athena query results S3 bucket
- Glue catalog database
- Kinesis input streams for `impressions` and `clicks`
- scheduled aggregation Lambda stub
- output properties aligned with the TypeScript example

The TypeScript example relies on local helper components (`datawarehouse.ts`) for Glue table creation, Firehose ingestion, and partition management. Those helpers are not yet ported to Dart in this baseline.

## Deploy

```bash
dart pub get
pulumi stack init dev
pulumi config set aws:region us-west-2
pulumi config set aws-dart-serverless-datawarehouse:dev true
pulumi up
```

`dev=true` is optional. It enables faster schedule cadence and force-destroy buckets.

## Outputs

- `impressionInputStream`
- `clickInputStream`
- `databaseName`
- `impressionTableName`
- `clickTableName`
- `athenaResultsBucket`

## Clean up

```bash
pulumi destroy
pulumi stack rm
```
