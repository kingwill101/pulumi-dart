// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_versioning_versioning_configuration.dart';

/// {@template pulumi_s3_bucket_versioning_bucket_versioning_args_doc}
/// The set of arguments for BucketVersioning.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_versioning_bucket_versioning_args_doc}
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
  final pulumi.Input<BucketVersioningVersioningConfiguration> versioningConfiguration;

  /// Creates a new [BucketVersioningArgs].
  /// [bucket] Name of the S3 bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [mfa] Concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [versioningConfiguration] Configuration block for the versioning parameters. See below.
  BucketVersioningArgs({
    required String bucket,
    String? expectedBucketOwner,
    String? mfa,
    String? region,
    required BucketVersioningVersioningConfiguration versioningConfiguration,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      expectedBucketOwner = pulumi.Input.asOptionalInput<String>(expectedBucketOwner),
      mfa = pulumi.Input.asOptionalInput<String>(mfa),
      region = pulumi.Input.asOptionalInput<String>(region),
      versioningConfiguration = pulumi.Input.asInput<BucketVersioningVersioningConfiguration>(versioningConfiguration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'mfa': ?mfa,
      'region': ?region,
      'versioningConfiguration': pulumi.Input.mapInputValue<BucketVersioningVersioningConfiguration, Map<String, dynamic>>(versioningConfiguration, (value) => value.toMap()),
    };
  }

  factory BucketVersioningArgs.fromMap(Map<String, dynamic> map) {
    return BucketVersioningArgs(
      bucket: map['bucket'] as String,
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : map['expectedBucketOwner'] as String,
      mfa: map['mfa'] == null ? null : map['mfa'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      versioningConfiguration: BucketVersioningVersioningConfiguration.fromMap((map['versioningConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

