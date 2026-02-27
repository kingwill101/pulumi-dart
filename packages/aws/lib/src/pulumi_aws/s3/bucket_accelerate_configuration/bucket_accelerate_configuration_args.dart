// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for BucketAccelerateConfiguration.
class BucketAccelerateConfigurationArgs {
  /// Name of the bucket.
  final pulumi.Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Transfer acceleration state of the bucket. Valid values: `Enabled`, `Suspended`.
  final pulumi.Input<String> status;

  BucketAccelerateConfigurationArgs({
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

  factory BucketAccelerateConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return BucketAccelerateConfigurationArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      expectedBucketOwner:
          pulumi.Input.asOptionalInput<String>(map['expectedBucketOwner']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      status: pulumi.Input.asInput<String>(map['status']),
    );
  }
}
