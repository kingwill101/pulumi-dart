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
    this.bucket,
    this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory BucketPolicyS3ControlState.fromMap(Map<String, dynamic> map) {
    return BucketPolicyS3ControlState(
      bucket: map['bucket'] == null ? null : ((map['bucket'] as String).input()).input(),
      policy: map['policy'] == null ? null : ((map['policy'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

