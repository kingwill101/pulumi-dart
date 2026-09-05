// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_metadata_configuration_metadata_configuration.dart';
import 'bucket_metadata_configuration_timeouts.dart';

/// {@template pulumi_s3_bucket_metadata_configuration_bucket_metadata_configuration_args_doc}
/// The set of arguments for BucketMetadataConfiguration.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_metadata_configuration_bucket_metadata_configuration_args_doc}
class BucketMetadataConfigurationArgs {
  /// General purpose bucket that you want to create the metadata configuration for.
  final pulumi.Input<String> bucket;
  /// Account ID of the expected bucket owner.
  final pulumi.Input<String?>? expectedBucketOwner;
  /// Metadata configuration. See `metadataConfiguration` Block for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<BucketMetadataConfigurationMetadataConfiguration> metadataConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  final pulumi.Input<BucketMetadataConfigurationTimeouts?>? timeouts;

  /// Creates a new [BucketMetadataConfigurationArgs].
  /// [bucket] General purpose bucket that you want to create the metadata configuration for.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [metadataConfiguration] Metadata configuration. See `metadataConfiguration` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const BucketMetadataConfigurationArgs({
    required this.bucket,
    this.expectedBucketOwner,
    required this.metadataConfiguration,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'metadataConfiguration': pulumi.Input.mapInputValue<BucketMetadataConfigurationMetadataConfiguration, Map<String, dynamic>>(metadataConfiguration, (value) => value.toMap()),
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<BucketMetadataConfigurationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory BucketMetadataConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return BucketMetadataConfigurationArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      expectedBucketOwner: (() { final guardedValue = map['expectedBucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadataConfiguration: pulumi.Input.fromValue(BucketMetadataConfigurationMetadataConfiguration.fromMap((map['metadataConfiguration']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketMetadataConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
