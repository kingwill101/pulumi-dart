# Pulumi Webhook Handler (Dart)

This example creates an API Gateway + Lambda webhook endpoint that can receive Pulumi Cloud webhooks and post them to Slack.

## Prerequisites

- Pulumi CLI
- AWS credentials configured for Pulumi
- Dart SDK
- A Slack Incoming Webhook URL

## Steps

1. Install dependencies:

```bash
dart pub get
```

2. Create a stack:

```bash
pulumi stack init dev
```

3. Set config:

```bash
pulumi config set aws:region <your-region>
pulumi config set aws-dart-pulumi-webhooks:slackChannel <your-channel>
pulumi config set aws-dart-pulumi-webhooks:slackWebhook --secret <webhook-url>
pulumi config set aws-dart-pulumi-webhooks:sharedSecret --secret <optional-shared-secret>
```

4. Deploy:

```bash
pulumi up
```

5. Get endpoint URL:

```bash
pulumi stack output url
```

6. Configure a Pulumi Cloud webhook to call this URL.

## Clean up

```bash
pulumi destroy
pulumi stack rm
```
