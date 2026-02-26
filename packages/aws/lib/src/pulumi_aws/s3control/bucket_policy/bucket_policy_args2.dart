// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for BucketPolicy.
class BucketPolicyArgs2 {
  /// Amazon Resource Name (ARN) of the bucket.
  final Input<String> bucket;

  /// JSON string of the resource policy.
  final Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  BucketPolicyArgs2({
    required this.bucket,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory BucketPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return BucketPolicyArgs2(
      bucket: Input.asInput<String>(map['bucket']),
      policy: Input.asInput<String>(map['policy']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
