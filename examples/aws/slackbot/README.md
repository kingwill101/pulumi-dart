[![Deploy this example with Pulumi](https://www.pulumi.com/images/deploy-with-pulumi/dark.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/slackbot/README.md#gh-light-mode-only)
[![Deploy this example with Pulumi](https://get.pulumi.com/new/button-light.svg)](https://app.pulumi.com/new?template=https://github.com/kingwill101/pulumi-dart/blob/master/examples/aws/slackbot/README.md#gh-dark-mode-only)

# Create a Slackbot for Posting Mention Notifications (Dart)

This example provisions the AWS infrastructure used by a Slack mention bot flow:

- DynamoDB table for subscription state
- SNS topic for asynchronous processing
- Two Lambda functions:
  - `webhook`: receives Slack events from API Gateway
  - `process`: handles async event processing
- API Gateway endpoint forwarding Slack events to Lambda

## Prerequisites

- [Install Pulumi](https://www.pulumi.com/docs/get-started/install/)
- [Install Dart](https://dart.dev/get-dart)
- Configure [AWS credentials](https://www.pulumi.com/docs/iac/clouds/aws/get-started/)
- Slack app credentials/tokens for your workspace

## Configuration

Required:

- `mentionbot:slackToken` (secret)
- `mentionbot:verificationToken` (secret)

Example:

```sh
pulumi config set aws:region us-east-1
pulumi config set --secret mentionbot:slackToken '<slack-token>'
pulumi config set --secret mentionbot:verificationToken '<verification-token>'
```

## Deploy

```sh
pulumi up
```

## Outputs

- `url`: API Gateway invoke URL to configure as the Slack events endpoint.

```sh
pulumi stack output url
```

## Cleanup

```sh
pulumi destroy
pulumi stack rm
```
