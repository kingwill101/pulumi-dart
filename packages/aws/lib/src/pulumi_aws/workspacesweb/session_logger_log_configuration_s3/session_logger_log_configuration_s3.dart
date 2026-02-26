// ignore_for_file: unused_element, unnecessary_cast

class SessionLoggerLogConfigurationS3 {
  /// S3 bucket name where logs are delivered.
  final String bucket;

  /// Expected bucket owner of the target S3 bucket.
  final String? bucketOwner;

  /// Folder structure that defines the organizational structure for log files in S3. Valid values: `FlatStructure`, `DateBasedStructure`.
  final String folderStructure;

  /// S3 path prefix that determines where log files are stored.
  final String? keyPrefix;

  /// Format of the log file written to S3. Valid values: `Json`, `Parquet`.
  final String logFileFormat;

  SessionLoggerLogConfigurationS3({
    required this.bucket,
    this.bucketOwner,
    required this.folderStructure,
    this.keyPrefix,
    required this.logFileFormat,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final bucketOwnerValue = bucketOwner;
    if (bucketOwnerValue != null) {
      map['bucketOwner'] = bucketOwnerValue;
    }
    map['folderStructure'] = folderStructure;
    final keyPrefixValue = keyPrefix;
    if (keyPrefixValue != null) {
      map['keyPrefix'] = keyPrefixValue;
    }
    map['logFileFormat'] = logFileFormat;
    return map;
  }

  factory SessionLoggerLogConfigurationS3.fromMap(Map<String, dynamic> map) {
    return SessionLoggerLogConfigurationS3(
      bucket: map['bucket'] as String,
      bucketOwner:
          map['bucketOwner'] == null ? null : map['bucketOwner'] as String,
      folderStructure: map['folderStructure'] as String,
      keyPrefix: map['keyPrefix'] == null ? null : map['keyPrefix'] as String,
      logFileFormat: map['logFileFormat'] as String,
    );
  }
}
