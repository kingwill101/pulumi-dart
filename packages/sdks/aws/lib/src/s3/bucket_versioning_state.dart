// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_versioning_versioning_configuration.dart';

/// Input properties used for looking up and filtering BucketVersioning resources.
class BucketVersioningState {
  /// Name of the S3 bucket.
  final pulumi.Input<String>? bucket;

  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;

  /// Concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
  final pulumi.Input<String>? mfa;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block for the versioning parameters. See below.
  final pulumi.Input<BucketVersioningVersioningConfiguration>?
  versioningConfiguration;

  /// Creates a new [BucketVersioningState].
  /// [bucket] Name of the S3 bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [mfa] Concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [versioningConfiguration] Configuration block for the versioning parameters. See below.
  BucketVersioningState({
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
      'versioningConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            BucketVersioningVersioningConfiguration,
            Map<String, dynamic>
          >(versioningConfiguration, (value) => value.toMap()),
    };
  }

  factory BucketVersioningState.fromMap(Map<String, dynamic> map) {
    return BucketVersioningState(
      bucket: (() {
        final guardedValue = map['bucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expectedBucketOwner: (() {
        final guardedValue = map['expectedBucketOwner'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mfa: (() {
        final guardedValue = map['mfa'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      versioningConfiguration: (() {
        final guardedValue = map['versioningConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BucketVersioningVersioningConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
