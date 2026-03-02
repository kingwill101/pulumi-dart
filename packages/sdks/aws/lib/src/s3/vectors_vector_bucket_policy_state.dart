// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VectorsVectorBucketPolicy resources.
class VectorsVectorBucketPolicyState {
  /// The policy document.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the vector bucket.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? vectorBucketArn;

  /// Creates a new [VectorsVectorBucketPolicyState].
  /// [policy] The policy document.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vectorBucketArn] ARN of the vector bucket.
  VectorsVectorBucketPolicyState({
    this.policy,
    this.region,
    this.vectorBucketArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
      'region': ?region,
      'vectorBucketArn': ?vectorBucketArn,
    };
  }

  factory VectorsVectorBucketPolicyState.fromMap(Map<String, dynamic> map) {
    return VectorsVectorBucketPolicyState(
      policy: map['policy'] == null ? null : (map['policy'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      vectorBucketArn: map['vectorBucketArn'] == null ? null : (map['vectorBucketArn'] as String).input(),
    );
  }
}

