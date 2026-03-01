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
  final pulumi.Input<BucketVersioningVersioningConfiguration>? versioningConfiguration;

  /// Creates a new [BucketVersioningState].
  /// [bucket] Name of the S3 bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [mfa] Concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [versioningConfiguration] Configuration block for the versioning parameters. See below.
  BucketVersioningState({
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? expectedBucketOwner,
    pulumi.Output<String>? mfa,
    pulumi.Output<String>? region,
    pulumi.Output<BucketVersioningVersioningConfiguration>? versioningConfiguration,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      expectedBucketOwner = pulumi.Input.asOptionalInput<String>(expectedBucketOwner),
      mfa = pulumi.Input.asOptionalInput<String>(mfa),
      region = pulumi.Input.asOptionalInput<String>(region),
      versioningConfiguration = pulumi.Input.asOptionalInput<BucketVersioningVersioningConfiguration>(versioningConfiguration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'mfa': ?mfa,
      'region': ?region,
      'versioningConfiguration': ?pulumi.Input.mapOptionalInputValue<BucketVersioningVersioningConfiguration, Map<String, dynamic>>(versioningConfiguration, (value) => value.toMap()),
    };
  }

  factory BucketVersioningState.fromMap(Map<String, dynamic> map) {
    return BucketVersioningState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : pulumi.Output.create<String>(map['expectedBucketOwner'] as String),
      mfa: map['mfa'] == null ? null : pulumi.Output.create<String>(map['mfa'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      versioningConfiguration: map['versioningConfiguration'] == null ? null : pulumi.Output.create<BucketVersioningVersioningConfiguration>(BucketVersioningVersioningConfiguration.fromMap((map['versioningConfiguration'] as Map).cast<String, dynamic>())),
    );
  }
}

