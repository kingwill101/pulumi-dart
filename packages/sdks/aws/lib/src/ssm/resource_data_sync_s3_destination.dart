// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_data_sync_s3_destination_destination_data_sharing.dart';

class ResourceDataSyncS3Destination {
  /// Name of S3 bucket where the aggregated data is stored.
  final pulumi.Input<String> bucketName;
  /// Enables destination data sharing.
  /// See `destinationDataSharing` below.
  final pulumi.Input<ResourceDataSyncS3DestinationDestinationDataSharing>? destinationDataSharing;
  /// ARN of an encryption key for a destination in Amazon S3.
  final pulumi.Input<String>? kmsKeyArn;
  /// Prefix for the bucket.
  final pulumi.Input<String>? prefix;
  /// Region with the bucket targeted by the Resource Data Sync.
  final pulumi.Input<String> region;
  /// A supported sync format. Only JsonSerDe is currently supported. Defaults to JsonSerDe.
  final pulumi.Input<String>? syncFormat;

  /// Creates a new [ResourceDataSyncS3Destination].
  /// [bucketName] Name of S3 bucket where the aggregated data is stored.
  /// [destinationDataSharing] Enables destination data sharing.
  /// [kmsKeyArn] ARN of an encryption key for a destination in Amazon S3.
  /// [prefix] Prefix for the bucket.
  /// [region] Region with the bucket targeted by the Resource Data Sync.
  /// [syncFormat] A supported sync format. Only JsonSerDe is currently supported. Defaults to JsonSerDe.
  const ResourceDataSyncS3Destination({
    required this.bucketName,
    this.destinationDataSharing,
    this.kmsKeyArn,
    this.prefix,
    required this.region,
    this.syncFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'destinationDataSharing': ?pulumi.Input.mapOptionalInputValue<ResourceDataSyncS3DestinationDestinationDataSharing, Map<String, dynamic>>(destinationDataSharing, (value) => value.toMap()),
      'kmsKeyArn': ?kmsKeyArn,
      'prefix': ?prefix,
      'region': region,
      'syncFormat': ?syncFormat,
    };
  }

  factory ResourceDataSyncS3Destination.fromMap(Map<String, dynamic> map) {
    return ResourceDataSyncS3Destination(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      destinationDataSharing: (() { final guardedValue = map['destinationDataSharing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceDataSyncS3DestinationDestinationDataSharing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
      syncFormat: (() { final guardedValue = map['syncFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
