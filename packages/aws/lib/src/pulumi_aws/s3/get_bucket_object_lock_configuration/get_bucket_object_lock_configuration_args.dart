// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBucketObjectLockConfiguration.
class GetBucketObjectLockConfigurationArgs {
  /// Name of the bucket.
  ///
  /// The following arguments are optional:
  final Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final Input<String>? expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetBucketObjectLockConfigurationArgs({
    required this.bucket,
    this.expectedBucketOwner,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final expectedBucketOwnerValue = expectedBucketOwner;
    if (expectedBucketOwnerValue != null) {
      map['expectedBucketOwner'] = expectedBucketOwnerValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetBucketObjectLockConfigurationArgs.fromMap(
      Map<String, dynamic> map) {
    return GetBucketObjectLockConfigurationArgs(
      bucket: Input.asInput<String>(map['bucket']),
      expectedBucketOwner:
          Input.asOptionalInput<String>(map['expectedBucketOwner']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
