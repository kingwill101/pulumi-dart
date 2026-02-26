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

  ResourceDataSyncS3Destination({
    required this.bucketName,
    this.kmsKeyArn,
    this.prefix,
    required this.region,
    this.syncFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    final kmsKeyArnValue = kmsKeyArn;
    if (kmsKeyArnValue != null) {
      map['kmsKeyArn'] = kmsKeyArnValue;
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    map['region'] = region;
    final syncFormatValue = syncFormat;
    if (syncFormatValue != null) {
      map['syncFormat'] = syncFormatValue;
    }
    return map;
  }

  factory ResourceDataSyncS3Destination.fromMap(Map<String, dynamic> map) {
    return ResourceDataSyncS3Destination(
      bucketName: map['bucketName'] as String,
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      region: map['region'] as String,
      syncFormat:
          map['syncFormat'] == null ? null : map['syncFormat'] as String,
    );
  }
}
