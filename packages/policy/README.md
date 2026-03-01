# pulumi_policy

Pulumi Policy SDK for Dart.

This package is manually maintained from upstream `pulumi-policy` APIs because `pulumi-policy` is not a Pulumi resource provider schema package.

## Status

- Public policy authoring API surface is available (policy types, validation/remediation helpers, policy/stack argument models).
- Analyzer runtime/server execution for Dart policy packs is implemented.

## Installation

```sh
dart pub add pulumi_policy
```

## Usage

```dart
import 'package:pulumi_policy/pulumi_policy.dart';

final policy = ResourceValidationPolicy(
  name: 'no-public-bucket-acl',
  description: 'Disallow public ACL values on S3 buckets.',
  enforcementLevel: EnforcementLevel.mandatory,
  validateResource: [
    validateResourceOfType<Map<String, Object?>>(
      'aws:s3/bucket:Bucket',
      (bucket, args, reportViolation) {
        final acl = bucket['acl'];
        if (acl == 'public-read' || acl == 'public-read-write') {
          reportViolation('S3 buckets cannot use public ACL values.');
        }
      },
    ),
  ],
);
```

## Upstream

- Repository: https://github.com/pulumi/pulumi-policy
- Python package path: `sdk/python/lib/pulumi_policy`
- Node package path: `sdk/nodejs/policy`
