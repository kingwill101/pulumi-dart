// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for BucketPolicy.
class BucketPolicyS3controlArgs {
  /// Amazon Resource Name (ARN) of the bucket.
  final pulumi.Input<String> bucket;

  /// JSON string of the resource policy.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  BucketPolicyS3controlArgs({
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

  factory BucketPolicyS3controlArgs.fromMap(Map<String, dynamic> map) {
    return BucketPolicyS3controlArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      policy: pulumi.Input.asInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
