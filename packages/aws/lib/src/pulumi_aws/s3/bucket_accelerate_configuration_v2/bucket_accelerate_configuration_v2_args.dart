// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for BucketAccelerateConfigurationV2.
class BucketAccelerateConfigurationV2Args {
  /// Name of the bucket.
  final Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final Input<String>? expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Transfer acceleration state of the bucket. Valid values: `Enabled`, `Suspended`.
  final Input<String> status;

  BucketAccelerateConfigurationV2Args({
    required this.bucket,
    this.expectedBucketOwner,
    this.region,
    required this.status,
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
    map['status'] = status;
    return map;
  }

  factory BucketAccelerateConfigurationV2Args.fromMap(
      Map<String, dynamic> map) {
    return BucketAccelerateConfigurationV2Args(
      bucket: Input.asInput<String>(map['bucket']),
      expectedBucketOwner:
          Input.asOptionalInput<String>(map['expectedBucketOwner']),
      region: Input.asOptionalInput<String>(map['region']),
      status: Input.asInput<String>(map['status']),
    );
  }
}
