# Google Cloud Functions (Dart)

This example uploads Python function source from `./functions` to a storage bucket and deploys an HTTP-triggered Cloud Function.

## Current status

- Pulumi runtime is Dart (`Pulumi.yaml`).
- Program entrypoint is `bin/main.dart`.
- Dart package metadata is present (`pubspec.yaml`).

## Configuration

Common:

- `gcp:project`

Optional function environment vars read from stack config:

- `destination`
- `travelOffset`
- `googleMapsApiKey`
- `twillioAccessToken`
- `twillioAccountSid`
- `toPhoneNumber`
- `fromPhoneNumber`

## Run

```bash
dart pub get
pulumi stack init dev
pulumi config set gcp:project <YOUR_GCP_PROJECT>
pulumi up
```

## Stack outputs

- `bucket_name`
- `fxn_url`

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
