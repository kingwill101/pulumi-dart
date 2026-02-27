// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_versioning_versioning_configuration/bucket_versioning_versioning_configuration.dart';

/// The set of arguments for BucketVersioning.
class BucketVersioningArgs {
  /// Name of the S3 bucket.
  final pulumi.Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;

  /// Concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
  final pulumi.Input<String>? mfa;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block for the versioning parameters. See below.
  final pulumi.Input<BucketVersioningVersioningConfiguration>
      versioningConfiguration;

  BucketVersioningArgs({
    required this.bucket,
    this.expectedBucketOwner,
    this.mfa,
    this.region,
    required this.versioningConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final expectedBucketOwnerValue = expectedBucketOwner;
    if (expectedBucketOwnerValue != null) {
      map['expectedBucketOwner'] = expectedBucketOwnerValue;
    }
    final mfaValue = mfa;
    if (mfaValue != null) {
      map['mfa'] = mfaValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['versioningConfiguration'] = pulumi.Input.mapInputValue<
            BucketVersioningVersioningConfiguration, Map<String, dynamic>>(
        versioningConfiguration, (value) => value.toMap());
    return map;
  }

  factory BucketVersioningArgs.fromMap(Map<String, dynamic> map) {
    return BucketVersioningArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      expectedBucketOwner:
          pulumi.Input.asOptionalInput<String>(map['expectedBucketOwner']),
      mfa: pulumi.Input.asOptionalInput<String>(map['mfa']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      versioningConfiguration:
          pulumi.Input.asInput<BucketVersioningVersioningConfiguration>(
              map['versioningConfiguration']),
    );
  }
}
