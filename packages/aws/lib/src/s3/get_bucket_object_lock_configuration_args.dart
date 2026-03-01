// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_get_bucket_object_lock_configuration_get_bucket_object_lock_configuration_args_doc}
/// Arguments for getBucketObjectLockConfiguration.
/// {@endtemplate}
/// {@macro pulumi_s3_get_bucket_object_lock_configuration_get_bucket_object_lock_configuration_args_doc}
class GetBucketObjectLockConfigurationArgs {
  /// Name of the bucket.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetBucketObjectLockConfigurationArgs].
  /// [bucket] Name of the bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetBucketObjectLockConfigurationArgs({
    required String bucket,
    String? expectedBucketOwner,
    String? region,
  }) : bucket = pulumi.Input.asInput<String>(bucket),
       expectedBucketOwner = pulumi.Input.asOptionalInput<String>(
         expectedBucketOwner,
       ),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'region': ?region,
    };
  }

  factory GetBucketObjectLockConfigurationArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetBucketObjectLockConfigurationArgs(
      bucket: map['bucket'] as String,
      expectedBucketOwner: map['expectedBucketOwner'] == null
          ? null
          : map['expectedBucketOwner'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
