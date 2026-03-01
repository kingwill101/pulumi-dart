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
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
    pulumi.Output<String>? vectorBucketArn,
  }) :
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region),
      vectorBucketArn = pulumi.Input.asOptionalInput<String>(vectorBucketArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy,
      'region': ?region,
      'vectorBucketArn': ?vectorBucketArn,
    };
  }

  factory VectorsVectorBucketPolicyState.fromMap(Map<String, dynamic> map) {
    return VectorsVectorBucketPolicyState(
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      vectorBucketArn: map['vectorBucketArn'] == null ? null : pulumi.Output.create<String>(map['vectorBucketArn'] as String),
    );
  }
}

