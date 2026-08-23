// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SessionLoggerLogConfigurationS3 {
  /// S3 bucket name where logs are delivered.
  final pulumi.Input<String> bucket;
  /// Expected bucket owner of the target S3 bucket.
  final pulumi.Input<String>? bucketOwner;
  /// Folder structure that defines the organizational structure for log files in S3. Valid values: `FlatStructure`, `DateBasedStructure`.
  final pulumi.Input<String> folderStructure;
  /// S3 path prefix that determines where log files are stored.
  final pulumi.Input<String>? keyPrefix;
  /// Format of the log file written to S3. Valid values: `Json`, `Parquet`.
  final pulumi.Input<String> logFileFormat;

  /// Creates a new [SessionLoggerLogConfigurationS3].
  /// [bucket] S3 bucket name where logs are delivered.
  /// [bucketOwner] Expected bucket owner of the target S3 bucket.
  /// [folderStructure] Folder structure that defines the organizational structure for log files in S3. Valid values: `FlatStructure`, `DateBasedStructure`.
  /// [keyPrefix] S3 path prefix that determines where log files are stored.
  /// [logFileFormat] Format of the log file written to S3. Valid values: `Json`, `Parquet`.
  const SessionLoggerLogConfigurationS3({
    required this.bucket,
    this.bucketOwner,
    required this.folderStructure,
    this.keyPrefix,
    required this.logFileFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'bucketOwner': ?bucketOwner,
      'folderStructure': folderStructure,
      'keyPrefix': ?keyPrefix,
      'logFileFormat': logFileFormat,
    };
  }

  factory SessionLoggerLogConfigurationS3.fromMap(Map<String, dynamic> map) {
    return SessionLoggerLogConfigurationS3(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      bucketOwner: (() { final guardedValue = map['bucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folderStructure: pulumi.Input.fromValue(map['folderStructure'] as String),
      keyPrefix: (() { final guardedValue = map['keyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logFileFormat: pulumi.Input.fromValue(map['logFileFormat'] as String),
    );
  }
}
