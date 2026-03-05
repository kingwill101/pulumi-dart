import 'package:pulumi_policy/pulumi_policy.dart';

void main() {
  ResourceValidationPolicy(
    name: 'no-public-bucket-acl',
    description: 'Disallow public ACL values on S3 buckets.',
    enforcementLevel: EnforcementLevel.mandatory,
    validateResource: [
      validateResourceOfType<Map<String, Object?>>('aws:s3/bucket:Bucket', (
        bucket,
        args,
        reportViolation,
      ) {
        final acl = bucket['acl'];
        if (acl == 'public-read' || acl == 'public-read-write') {
          reportViolation('S3 buckets cannot use public ACL values.');
        }
      }),
    ],
  );
}
