// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_bucket_accelerate_configuration_v2_bucket_accelerate_configuration_v2_args_doc}
/// The set of arguments for BucketAccelerateConfigurationV2.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_accelerate_configuration_v2_bucket_accelerate_configuration_v2_args_doc}
class BucketAccelerateConfigurationV2Args {
  /// Name of the bucket.
  final pulumi.Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Transfer acceleration state of the bucket. Valid values: `Enabled`, `Suspended`.
  final pulumi.Input<String> status;

  /// Creates a new [BucketAccelerateConfigurationV2Args].
  /// [bucket] Name of the bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Transfer acceleration state of the bucket. Valid values: `Enabled`, `Suspended`.
  BucketAccelerateConfigurationV2Args({
    required String bucket,
    String? expectedBucketOwner,
    String? region,
    required String status,
  }) : bucket = pulumi.Input.asInput<String>(bucket),
       expectedBucketOwner = pulumi.Input.asOptionalInput<String>(
         expectedBucketOwner,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       status = pulumi.Input.asInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'region': ?region,
      'status': status,
    };
  }

  factory BucketAccelerateConfigurationV2Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketAccelerateConfigurationV2Args(
      bucket: map['bucket'] as String,
      expectedBucketOwner: map['expectedBucketOwner'] == null
          ? null
          : map['expectedBucketOwner'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      status: map['status'] as String,
    );
  }
}
