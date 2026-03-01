# AWS Console Change Slack Notifier (Dart)

This example deploys resources that send Slack notifications for AWS Console write operations in a region:
- CloudTrail writing to S3
- EventBridge rule for CloudTrail API call events
- Lambda function that posts to Slack webhook

## Prerequisites

- Pulumi CLI
- AWS credentials configured
- Dart SDK 3.10+

## Configuration

Required:

```bash
pulumi config set slackWebhookURL 'https://hooks.slack.com/services/...'
```

Optional:

```bash
pulumi config set slackMessageUsername 'Console Change Monitor'
pulumi config set slackMessageText ':warning: Somebody made a change in the console!'
pulumi config set trailObjectExpirationInDays 30
```

## Run

```bash
dart pub get
pulumi stack init dev
pulumi config set aws:region us-east-1
pulumi up
```
