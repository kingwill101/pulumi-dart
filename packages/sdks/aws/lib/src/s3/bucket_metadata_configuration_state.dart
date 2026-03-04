// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_metadata_configuration_metadata_configuration.dart';
import 'bucket_metadata_configuration_timeouts.dart';

/// Input properties used for looking up and filtering BucketMetadataConfiguration resources.
class BucketMetadataConfigurationState {
  /// General purpose bucket that you want to create the metadata configuration for.
  final pulumi.Input<String>? bucket;

  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;

  /// Metadata configuration. See `metadata_configuration` Block for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<BucketMetadataConfigurationMetadataConfiguration>?
  metadataConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<BucketMetadataConfigurationTimeouts>? timeouts;

  /// Creates a new [BucketMetadataConfigurationState].
  /// [bucket] General purpose bucket that you want to create the metadata configuration for.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [metadataConfiguration] Metadata configuration. See `metadata_configuration` Block for details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  BucketMetadataConfigurationState({
    this.bucket,
    this.expectedBucketOwner,
    this.metadataConfiguration,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'metadataConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            BucketMetadataConfigurationMetadataConfiguration,
            Map<String, dynamic>
          >(metadataConfiguration, (value) => value.toMap()),
      'region': ?region,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            BucketMetadataConfigurationTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory BucketMetadataConfigurationState.fromMap(Map<String, dynamic> map) {
    return BucketMetadataConfigurationState(
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
      metadataConfiguration: (() {
        final guardedValue = map['metadataConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BucketMetadataConfigurationMetadataConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BucketMetadataConfigurationTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
