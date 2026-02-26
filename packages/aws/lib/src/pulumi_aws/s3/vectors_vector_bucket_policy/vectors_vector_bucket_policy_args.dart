// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for VectorsVectorBucketPolicy.
class VectorsVectorBucketPolicyArgs {
  /// The policy document.
  final Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the vector bucket.
  ///
  /// The following arguments are optional:
  final Input<String> vectorBucketArn;

  VectorsVectorBucketPolicyArgs({
    required this.policy,
    this.region,
    required this.vectorBucketArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['vectorBucketArn'] = vectorBucketArn;
    return map;
  }

  factory VectorsVectorBucketPolicyArgs.fromMap(Map<String, dynamic> map) {
    return VectorsVectorBucketPolicyArgs(
      policy: Input.asInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
      vectorBucketArn: Input.asInput<String>(map['vectorBucketArn']),
    );
  }
}
