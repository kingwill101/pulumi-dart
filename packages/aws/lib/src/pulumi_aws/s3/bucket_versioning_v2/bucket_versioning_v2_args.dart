// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_versioning_v2_versioning_configuration/bucket_versioning_v2_versioning_configuration.dart';

/// The set of arguments for BucketVersioningV2.
class BucketVersioningV2Args {
  /// Name of the S3 bucket.
  final Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final Input<String>? expectedBucketOwner;

  /// Concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
  final Input<String>? mfa;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block for the versioning parameters. See below.
  final Input<BucketVersioningV2VersioningConfiguration>
      versioningConfiguration;

  BucketVersioningV2Args({
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
    map['versioningConfiguration'] = Input.mapInputValue<
            BucketVersioningV2VersioningConfiguration, Map<String, dynamic>>(
        versioningConfiguration, (value) => value.toMap());
    return map;
  }

  factory BucketVersioningV2Args.fromMap(Map<String, dynamic> map) {
    return BucketVersioningV2Args(
      bucket: Input.asInput<String>(map['bucket']),
      expectedBucketOwner:
          Input.asOptionalInput<String>(map['expectedBucketOwner']),
      mfa: Input.asOptionalInput<String>(map['mfa']),
      region: Input.asOptionalInput<String>(map['region']),
      versioningConfiguration:
          Input.asInput<BucketVersioningV2VersioningConfiguration>(
              map['versioningConfiguration']),
    );
  }
}
