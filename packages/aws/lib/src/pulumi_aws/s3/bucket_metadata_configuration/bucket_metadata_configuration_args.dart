// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_metadata_configuration_metadata_configuration/bucket_metadata_configuration_metadata_configuration.dart';
import '../bucket_metadata_configuration_timeouts/bucket_metadata_configuration_timeouts.dart';

/// The set of arguments for BucketMetadataConfiguration.
class BucketMetadataConfigurationArgs {
  /// General purpose bucket that you want to create the metadata configuration for.
  final Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final Input<String>? expectedBucketOwner;

  /// Metadata configuration. See `metadata_configuration` Block for details.
  ///
  /// The following arguments are optional:
  final Input<BucketMetadataConfigurationMetadataConfiguration>
      metadataConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<BucketMetadataConfigurationTimeouts>? timeouts;

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
    map['metadataConfiguration'] = Input.mapInputValue<
        BucketMetadataConfigurationMetadataConfiguration,
        Map<String, dynamic>>(metadataConfiguration, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          BucketMetadataConfigurationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory BucketMetadataConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return BucketMetadataConfigurationArgs(
      bucket: Input.asInput<String>(map['bucket']),
      expectedBucketOwner:
          Input.asOptionalInput<String>(map['expectedBucketOwner']),
      metadataConfiguration:
          Input.asInput<BucketMetadataConfigurationMetadataConfiguration>(
              map['metadataConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      timeouts: Input.asOptionalInput<BucketMetadataConfigurationTimeouts>(
          map['timeouts']),
    );
  }
}
