// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_metadata_configuration_metadata_configuration/bucket_metadata_configuration_metadata_configuration.dart';
import '../bucket_metadata_configuration_timeouts/bucket_metadata_configuration_timeouts.dart';

/// The set of arguments for BucketMetadataConfiguration.
class BucketMetadataConfigurationArgs {
  /// General purpose bucket that you want to create the metadata configuration for.
  final pulumi.Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;

  /// Metadata configuration. See `metadata_configuration` Block for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<BucketMetadataConfigurationMetadataConfiguration>
      metadataConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<BucketMetadataConfigurationTimeouts>? timeouts;

  BucketMetadataConfigurationArgs({
    required this.bucket,
    this.expectedBucketOwner,
    required this.metadataConfiguration,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final expectedBucketOwnerValue = expectedBucketOwner;
    if (expectedBucketOwnerValue != null) {
      map['expectedBucketOwner'] = expectedBucketOwnerValue;
    }
    map['metadataConfiguration'] = pulumi.Input.mapInputValue<
        BucketMetadataConfigurationMetadataConfiguration,
        Map<String, dynamic>>(metadataConfiguration, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          BucketMetadataConfigurationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory BucketMetadataConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return BucketMetadataConfigurationArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      expectedBucketOwner:
          pulumi.Input.asOptionalInput<String>(map['expectedBucketOwner']),
      metadataConfiguration: pulumi.Input.asInput<
              BucketMetadataConfigurationMetadataConfiguration>(
          map['metadataConfiguration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      timeouts:
          pulumi.Input.asOptionalInput<BucketMetadataConfigurationTimeouts>(
              map['timeouts']),
    );
  }
}
