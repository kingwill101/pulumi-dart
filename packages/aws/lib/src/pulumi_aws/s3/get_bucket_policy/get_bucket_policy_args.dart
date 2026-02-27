// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBucketPolicy.
class GetBucketPolicyArgs {
  /// Bucket name.
  final pulumi.Input<String> bucket;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetBucketPolicyArgs({
    required this.bucket,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetBucketPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketPolicyArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
