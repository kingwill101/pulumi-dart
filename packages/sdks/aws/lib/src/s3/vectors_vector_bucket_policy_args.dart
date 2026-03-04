// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_vectors_vector_bucket_policy_vectors_vector_bucket_policy_args_doc}
/// The set of arguments for VectorsVectorBucketPolicy.
/// {@endtemplate}
/// {@macro pulumi_s3_vectors_vector_bucket_policy_vectors_vector_bucket_policy_args_doc}
class VectorsVectorBucketPolicyArgs {
  /// The policy document.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of the vector bucket.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vectorBucketArn;

  /// Creates a new [VectorsVectorBucketPolicyArgs].
  /// [policy] The policy document.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [vectorBucketArn] ARN of the vector bucket.
  VectorsVectorBucketPolicyArgs({
    required this.policy,
    this.region,
    required this.vectorBucketArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy,
      'region': ?region,
      'vectorBucketArn': vectorBucketArn,
    };
  }

  factory VectorsVectorBucketPolicyArgs.fromMap(Map<String, dynamic> map) {
    return VectorsVectorBucketPolicyArgs(
      policy: pulumi.Input.fromValue(map['policy'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vectorBucketArn: pulumi.Input.fromValue(map['vectorBucketArn'] as String),
    );
  }
}
