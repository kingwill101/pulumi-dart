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
  final pulumi.Input<BucketMetadataConfigurationMetadataConfiguration>? metadataConfiguration;
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
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? expectedBucketOwner,
    pulumi.Output<BucketMetadataConfigurationMetadataConfiguration>? metadataConfiguration,
    pulumi.Output<String>? region,
    pulumi.Output<BucketMetadataConfigurationTimeouts>? timeouts,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      expectedBucketOwner = pulumi.Input.asOptionalInput<String>(expectedBucketOwner),
      metadataConfiguration = pulumi.Input.asOptionalInput<BucketMetadataConfigurationMetadataConfiguration>(metadataConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<BucketMetadataConfigurationTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'metadataConfiguration': ?pulumi.Input.mapOptionalInputValue<BucketMetadataConfigurationMetadataConfiguration, Map<String, dynamic>>(metadataConfiguration, (value) => value.toMap()),
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<BucketMetadataConfigurationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory BucketMetadataConfigurationState.fromMap(Map<String, dynamic> map) {
    return BucketMetadataConfigurationState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : pulumi.Output.create<String>(map['expectedBucketOwner'] as String),
      metadataConfiguration: map['metadataConfiguration'] == null ? null : pulumi.Output.create<BucketMetadataConfigurationMetadataConfiguration>(BucketMetadataConfigurationMetadataConfiguration.fromMap((map['metadataConfiguration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<BucketMetadataConfigurationTimeouts>(BucketMetadataConfigurationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

