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

## Templates (macros)

You can treat these helper builders as reusable policy templates/macros:

- `validateResourceOfType<T>()`
- `remediateResourceOfType<T>()`
- `validateRemediateResourceOfType<T>()`
- `validateStackResourcesOfType<T>()`

### Template: resource validation

```dart
final policy = ResourceValidationPolicy(
  name: 'require-tag',
  description: 'Resources must define env tag.',
  enforcementLevel: EnforcementLevel.mandatory,
  validateResource: [
    validateResourceOfType<Map<String, Object?>>(
      'aws:s3/bucket:Bucket',
      (props, args, reportViolation) {
        final tags = props['tags'];
        if (tags is! Map || !tags.containsKey('env')) {
          reportViolation('Missing required env tag.');
        }
      },
    ),
  ],
);
```

### Template: remediation

```dart
final policy = ResourceValidationPolicy(
  name: 'default-versioning',
  description: 'Enable versioning if omitted.',
  enforcementLevel: EnforcementLevel.remediate,
  remediateResource: remediateResourceOfType<Map<String, Object?>>(
    'aws:s3/bucket:Bucket',
    (props, args) {
      if (props['versioning'] != true) {
        return {'versioning': true};
      }
      return null;
    },
  ),
);
```

### Template: combined validate + remediate

```dart
final callbacks = validateRemediateResourceOfType<Map<String, Object?>>(
  'pkg:index:Thing',
  (props, args, reportViolation) {
    if (props['enabled'] == true) {
      return null;
    }
    reportViolation('Resource remediated to enabled=true.');
    return {'enabled': true};
  },
);

final policy = ResourceValidationPolicy(
  name: 'enforce-enabled',
  description: 'Things should be enabled.',
  enforcementLevel: EnforcementLevel.remediate,
  validateResource: [callbacks.validateResource],
  remediateResource: callbacks.remediateResource,
);
```

### Template: stack-level policy

```dart
final policy = StackValidationPolicy(
  name: 'limit-resources',
  description: 'Maximum 10 buckets per stack.',
  enforcementLevel: EnforcementLevel.mandatory,
  validateStack: validateStackResourcesOfType<Map<String, Object?>>(
    'aws:s3/bucket:Bucket',
    (resources, args, reportViolation) {
      if (resources.length > 10) {
        reportViolation('Too many buckets in this stack.');
      }
    },
  ),
);
```

## Policy configuration

Policy config is keyed by policy name. Supported value forms:

- shorthand enforcement: `"policy-name": "mandatory"`
- enum-like value: `"policy-name": "disabled"`
- object form: `"policy-name": {"enforcementLevel": "mandatory", ...}`

Any remaining object keys are available in callbacks through
`args.getConfig<Map<String, Object?>>()`.

## Upstream

- Repository: https://github.com/pulumi/pulumi-policy
- Python package path: `sdk/python/lib/pulumi_policy`
- Node package path: `sdk/nodejs/policy`
