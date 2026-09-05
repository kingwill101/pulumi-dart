// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_versioning_v2_versioning_configuration.dart';

/// {@template pulumi_s3_bucket_versioning_v2_bucket_versioning_v2_args_doc}
/// The set of arguments for BucketVersioningV2.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_versioning_v2_bucket_versioning_v2_args_doc}
class BucketVersioningV2Args {
  /// Name of the S3 bucket.
  final pulumi.Input<String> bucket;
  /// Account ID of the expected bucket owner.
  final pulumi.Input<String?>? expectedBucketOwner;
  /// Concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
  final pulumi.Input<String?>? mfa;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration block for the versioning parameters. See below.
  final pulumi.Input<BucketVersioningV2VersioningConfiguration> versioningConfiguration;

  /// Creates a new [BucketVersioningV2Args].
  /// [bucket] Name of the S3 bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [mfa] Concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [versioningConfiguration] Configuration block for the versioning parameters. See below.
  const BucketVersioningV2Args({
    required this.bucket,
    this.expectedBucketOwner,
    this.mfa,
    this.region,
    required this.versioningConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'mfa': ?mfa,
      'region': ?region,
      'versioningConfiguration': pulumi.Input.mapInputValue<BucketVersioningV2VersioningConfiguration, Map<String, dynamic>>(versioningConfiguration, (value) => value.toMap()),
    };
  }

  factory BucketVersioningV2Args.fromMap(Map<String, dynamic> map) {
    return BucketVersioningV2Args(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      expectedBucketOwner: (() { final guardedValue = map['expectedBucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mfa: (() { final guardedValue = map['mfa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versioningConfiguration: pulumi.Input.fromValue(BucketVersioningV2VersioningConfiguration.fromMap((map['versioningConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}
