// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceDataSyncS3Destination {
  /// Name of S3 bucket where the aggregated data is stored.
  final pulumi.Input<String> bucketName;
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
  /// [kmsKeyArn] ARN of an encryption key for a destination in Amazon S3.
  /// [prefix] Prefix for the bucket.
  /// [region] Region with the bucket targeted by the Resource Data Sync.
  /// [syncFormat] A supported sync format. Only JsonSerDe is currently supported. Defaults to JsonSerDe.
  ResourceDataSyncS3Destination({
    required this.bucketName,
    this.kmsKeyArn,
    this.prefix,
    required this.region,
    this.syncFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'kmsKeyArn': ?kmsKeyArn,
      'prefix': ?prefix,
      'region': region,
      'syncFormat': ?syncFormat,
    };
  }

  factory ResourceDataSyncS3Destination.fromMap(Map<String, dynamic> map) {
    return ResourceDataSyncS3Destination(
      bucketName: (map['bucketName'] as String).input(),
      kmsKeyArn: map['kmsKeyArn'] == null ? null : (map['kmsKeyArn'] as String).input(),
      prefix: map['prefix'] == null ? null : (map['prefix'] as String).input(),
      region: (map['region'] as String).input(),
      syncFormat: map['syncFormat'] == null ? null : (map['syncFormat'] as String).input(),
    );
  }
}

