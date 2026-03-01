# Slackbot Infrastructure (Dart)

This example provisions the base Pub/Sub and IAM resources used by a Slackbot-style message processor on GCP.

## Current status

- Pulumi runtime is Dart (`Pulumi.yaml`).
- Program entrypoint is `bin/main.dart`.
- Main stack logic lives in `lib/main.dart`.

## Resources created

- Primary Pub/Sub topic (`mentionbot-messages`)
- Dead-letter Pub/Sub topic (`mentionbot-messages-dlq`)
- Pub/Sub subscription (`mentionbot-messages-subscription`)
- Processor service account + project-level subscriber role binding

## Configuration

Required:

- `gcp:project`

Template metadata also defines `gcp:region` (default `us-central1`), but current Dart code does not read it.

## Run

```bash
dart pub get
pulumi stack init dev
pulumi config set gcp:project <YOUR_GCP_PROJECT>
pulumi up
```

## Stack outputs

- `topicName`
- `deadLetterTopicName`
- `subscriptionName`
- `processorServiceAccountEmail`

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
