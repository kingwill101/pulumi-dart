# Google Native Storage Bucket (Dart)

This Dart-first example uses `pulumi_google_native` to create one GCS bucket.

## Prerequisites

- Google Cloud credentials available to the provider
- Provider project set (either in provider config or on the resource)

Example provider config:

```bash
pulumi config set google-native:project <gcp-project-id>
```

## Required stack config

Bucket names are globally unique:

```bash
pulumi config set bucketName <globally-unique-bucket-name>
```

## Optional stack config

```bash
pulumi config set location US
pulumi config set storageClass STANDARD
```

## Deploy

```bash
pulumi up
```

## Outputs

- `name`
- `location`
- `selfLink`
- `project`

## Destroy

```bash
pulumi destroy --yes
```
