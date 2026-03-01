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
    required pulumi.Output<String> bucket,
    required pulumi.Output<String> policy,
    pulumi.Output<String>? region,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      policy = pulumi.Input.asInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'policy': policy,
      'region': ?region,
    };
  }

  factory BucketPolicyS3ControlArgs.fromMap(Map<String, dynamic> map) {
    return BucketPolicyS3ControlArgs(
      bucket: pulumi.Output.create<String>(map['bucket'] as String),
      policy: pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

