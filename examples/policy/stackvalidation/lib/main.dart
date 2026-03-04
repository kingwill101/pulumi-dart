import 'package:pulumi_policy/pulumi_policy.dart';

const requiredRegion = 'us-west-1';
const maxNumBuckets = 1;

void registerPolicyPack() {
  PolicyPack(
    'stackvalidation',
    PolicyPackArgs(
      policies: [
        StackValidationPolicy(
          name: 's3-region-check',
          description: 'Checks the region the bucket was deployed in.',
          enforcementLevel: EnforcementLevel.advisory,
          validateStack: (stack, reportViolation) {
            for (final resource in stack.resources) {
              if (resource.type != 'aws:s3/bucket:Bucket') {
                continue;
              }

              if (resource.props.containsKey('region') &&
                  resource.props['region'] != requiredRegion) {
                reportViolation(
                  'Bucket ${resource.name} must be in region $requiredRegion.',
                );
              }
            }
          },
        ),
        StackValidationPolicy(
          name: 's3-count-check',
          description: 'Checks the number of S3 buckets created in the stack.',
          enforcementLevel: EnforcementLevel.advisory,
          validateStack: (stack, reportViolation) {
            final buckets = stack.resources
                .where((resource) => resource.type == 'aws:s3/bucket:Bucket')
                .length;

            if (buckets > maxNumBuckets) {
              reportViolation(
                'No more than $maxNumBuckets bucket(s) should be created.',
              );
            }
          },
        ),
      ],
    ),
  );
}
