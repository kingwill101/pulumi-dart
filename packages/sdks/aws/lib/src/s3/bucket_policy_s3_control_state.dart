// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketPolicy resources.
class BucketPolicyS3ControlState {
  /// Amazon Resource Name (ARN) of the bucket.
  final pulumi.Input<String>? bucket;
  /// JSON string of the resource policy.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BucketPolicyS3ControlState].
  /// [bucket] Amazon Resource Name (ARN) of the bucket.
  /// [policy] JSON string of the resource policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BucketPolicyS3ControlState({
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory BucketPolicyS3ControlState.fromMap(Map<String, dynamic> map) {
    return BucketPolicyS3ControlState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

