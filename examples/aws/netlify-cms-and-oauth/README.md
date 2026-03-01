# AWS Dart Netlify CMS and OAuth Infrastructure Example

This is a Dart translation of infrastructure from:
https://github.com/kingwill101/pulumi-dart/tree/master/pulumi_examples/aws-ts-netlify-cms-and-oauth

This stack provisions both:
1. CMS static hosting infrastructure (`cms`): S3 + CloudFront + Route53 alias.
2. OAuth provider infrastructure (`cms-oauth`): ECS Fargate + ALB + ACM + Route53 alias.

## Prerequisites

1. Install Pulumi.
2. Configure AWS credentials.
3. Install Dart SDK.
4. Have Route53 hosted zones for both target domains.

## Configuration

```bash
# CMS
pulumi config set pulumi-website-cms:targetDomain <cms-domain>
pulumi config set pulumi-website-cms:pathToWebsiteContents <path-to-built-cms-assets>
# optional
pulumi config set pulumi-website-cms:certificateArn <acm-arn>

# OAuth
pulumi config set netlify-cms-oauth-provider-infrastructure:targetDomain <oauth-domain>
pulumi config set netlify-cms-oauth-provider-infrastructure:githubKey <github-client-id>
pulumi config set --secret netlify-cms-oauth-provider-infrastructure:githubSecret
pulumi config set --secret netlify-cms-oauth-provider-infrastructure:sessionSecret
# optional
pulumi config set netlify-cms-oauth-provider-infrastructure:githubScope public_repo
pulumi config set netlify-cms-oauth-provider-infrastructure:targetGroupPort 80
```

## Deploy

```bash
cd examples/aws/netlify-cms-and-oauth
pulumi stack init dev
pulumi up
```

## Outputs

- `cmsContentBucketUri`
- `cmsCloudFrontDomain`
- `cmsTargetDomainEndpoint`
- `oauthEndpoint`

## Cleanup

```bash
pulumi destroy
```
