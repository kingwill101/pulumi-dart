# AWS Organizations (Dart)

This example shows how to manage AWS Organizations resources with Pulumi in Dart.

It demonstrates:

- Creating a development OU and member account
- Creating management-account IAM identities for developers and automation
- Creating cross-account roles/policies in the member account via an assumed-role provider
- Creating and attaching tag policies
- Creating and attaching a backup policy

## Prerequisites

- Pulumi CLI
- Dart SDK
- AWS credentials with Organizations permissions
- Backup and Tag policy types enabled in AWS Organizations

## Deploy

```bash
pulumi stack init accounts
pulumi config set aws:region us-west-2
pulumi config set devAccountEmailContact <email> --secret
pulumi up
```

## Notes

- The created AWS account is protected from deletion (`protect: true`).
- Closed accounts remain suspended by AWS for up to 90 days.

## Cleanup

```bash
pulumi destroy --yes
pulumi stack rm --yes
```
