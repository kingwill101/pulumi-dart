// ignore_for_file: unused_element, unnecessary_cast


class ResourceDataSyncS3Destination {
  /// Name of S3 bucket where the aggregated data is stored.
  final String bucketName;
  /// ARN of an encryption key for a destination in Amazon S3.
  final String? kmsKeyArn;
  /// Prefix for the bucket.
  final String? prefix;
  /// Region with the bucket targeted by the Resource Data Sync.
  final String region;
  /// A supported sync format. Only JsonSerDe is currently supported. Defaults to JsonSerDe.
  final String? syncFormat;

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
      bucketName: map['bucketName'] as String,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      region: map['region'] as String,
      syncFormat: map['syncFormat'] == null ? null : map['syncFormat'] as String,
    );
  }
}

