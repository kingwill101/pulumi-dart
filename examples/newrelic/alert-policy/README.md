# New Relic Alert Policy (Dart)

This Dart-first example uses `pulumi_newrelic` to create one alert policy.

## Prerequisites

- New Relic account
- Provider config set for `newrelic`

Example:

```bash
pulumi config set newrelic:accountId <account-id>
pulumi config set --secret newrelic:apiKey <user-or-nerdgraph-api-key>
pulumi config set newrelic:region US
```

## Optional stack config

```bash
pulumi config set policyName pulumi-dart-policy
pulumi config set incidentPreference PER_POLICY
```

Allowed `incidentPreference` values include:

- `PER_POLICY`
- `PER_CONDITION`
- `PER_CONDITION_AND_TARGET`

## Deploy

```bash
pulumi up
```

## Outputs

- `name`
- `incidentPreference`
- `policyId`

## Destroy

```bash
pulumi destroy --yes
```
