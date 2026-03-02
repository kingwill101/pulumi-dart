// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_versioning_v2_versioning_configuration.dart';

/// Input properties used for looking up and filtering BucketVersioningV2 resources.
class BucketVersioningV2State {
  /// Name of the S3 bucket.
  final pulumi.Input<String>? bucket;
  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;
  /// Concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
  final pulumi.Input<String>? mfa;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for the versioning parameters. See below.
  final pulumi.Input<BucketVersioningV2VersioningConfiguration>? versioningConfiguration;

  /// Creates a new [BucketVersioningV2State].
  /// [bucket] Name of the S3 bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [mfa] Concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [versioningConfiguration] Configuration block for the versioning parameters. See below.
  BucketVersioningV2State({
    this.bucket,
    this.expectedBucketOwner,
    this.mfa,
    this.region,
    this.versioningConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'mfa': ?mfa,
      'region': ?region,
      'versioningConfiguration': ?pulumi.Input.mapOptionalInputValue<BucketVersioningV2VersioningConfiguration, Map<String, dynamic>>(versioningConfiguration, (value) => value.toMap()),
    };
  }

  factory BucketVersioningV2State.fromMap(Map<String, dynamic> map) {
    return BucketVersioningV2State(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : (map['expectedBucketOwner'] as String).input(),
      mfa: map['mfa'] == null ? null : (map['mfa'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      versioningConfiguration: map['versioningConfiguration'] == null ? null : (BucketVersioningV2VersioningConfiguration.fromMap((map['versioningConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

