# AWS Lambda for Slack Notification (Dart)

Creates a Lambda function that posts to a Slack webhook and exposes it via API Gateway.

## Required config

```bash
pulumi config set --secret slackWebhookUrl <your-slack-webhook-url>
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
