// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_control_bucket_policy_bucket_policy_s3_control_args_doc}
/// The set of arguments for BucketPolicy.
/// {@endtemplate}
/// {@macro pulumi_s3_control_bucket_policy_bucket_policy_s3_control_args_doc}
class BucketPolicyS3ControlArgs {
  /// Amazon Resource Name (ARN) of the bucket.
  final pulumi.Input<String> bucket;
  /// JSON string of the resource policy.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BucketPolicyS3ControlArgs].
  /// [bucket] Amazon Resource Name (ARN) of the bucket.
  /// [policy] JSON string of the resource policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BucketPolicyS3ControlArgs({
    required this.bucket,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'policy': policy,
      'region': ?region,
    };
  }

  factory BucketPolicyS3ControlArgs.fromMap(Map<String, dynamic> map) {
    return BucketPolicyS3ControlArgs(
      bucket: (map['bucket'] as String).input(),
      policy: (map['policy'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

