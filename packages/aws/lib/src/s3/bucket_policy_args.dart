// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_bucket_policy_bucket_policy_args_doc}
/// The set of arguments for BucketPolicy.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_policy_bucket_policy_args_doc}
class BucketPolicyArgs {
  /// Name of the bucket to which to apply the policy.
  final pulumi.Input<String> bucket;

  /// Text of the policy. Although this is a bucket policy rather than an IAM policy, the `aws.iam.getPolicyDocument` data source may be used, so long as it specifies a principal. For more information about building AWS IAM policy documents, see the AWS IAM Policy Document Guide. Note: Bucket policies are limited to 20 KB in size.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BucketPolicyArgs].
  /// [bucket] Name of the bucket to which to apply the policy.
  /// [policy] Text of the policy. Although this is a bucket policy rather than an IAM policy, the `aws.iam.getPolicyDocument` data source may be used, so long as it specifies a principal. For more information about building AWS IAM policy documents, see the AWS IAM Policy Document Guide. Note: Bucket policies are limited to 20 KB in size.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BucketPolicyArgs({
    required String bucket,
    required String policy,
    String? region,
  }) : bucket = pulumi.Input.asInput<String>(bucket),
       policy = pulumi.Input.asInput<String>(policy),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'policy': policy,
      'region': ?region,
    };
  }

  factory BucketPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BucketPolicyArgs(
      bucket: map['bucket'] as String,
      policy: map['policy'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
