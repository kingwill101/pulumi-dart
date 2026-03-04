// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_bucket_accelerate_configuration_bucket_accelerate_configuration_args_doc}
/// The set of arguments for BucketAccelerateConfiguration.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_accelerate_configuration_bucket_accelerate_configuration_args_doc}
class BucketAccelerateConfigurationArgs {
  /// Name of the bucket.
  final pulumi.Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Transfer acceleration state of the bucket. Valid values: `Enabled`, `Suspended`.
  final pulumi.Input<String> status;

  /// Creates a new [BucketAccelerateConfigurationArgs].
  /// [bucket] Name of the bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Transfer acceleration state of the bucket. Valid values: `Enabled`, `Suspended`.
  BucketAccelerateConfigurationArgs({
    required this.bucket,
    this.expectedBucketOwner,
    this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'region': ?region,
      'status': status,
    };
  }

  factory BucketAccelerateConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return BucketAccelerateConfigurationArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      expectedBucketOwner: (() {
        final guardedValue = map['expectedBucketOwner'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
