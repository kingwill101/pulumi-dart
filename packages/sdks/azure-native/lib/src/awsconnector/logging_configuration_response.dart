// ignore_for_file: unused_element, unnecessary_cast

import 'target_object_key_format_response.dart';

/// Definition of LoggingConfiguration
class LoggingConfigurationResponse {
  /// The name of the bucket where Amazon S3 should store server access log files. You can store log files in any bucket that you own. By default, logs are stored in the bucket where the ``LoggingConfiguration`` property is defined.
  final String? destinationBucketName;
  /// A prefix for all log object keys. If you store log files from multiple Amazon S3 buckets in a single bucket, you can use a prefix to distinguish which log files came from which bucket.
  final String? logFilePrefix;
  /// Amazon S3 key format for log objects. Only one format, either PartitionedPrefix or SimplePrefix, is allowed. Describes the key format for server access log file in the target bucket. You can choose between SimplePrefix and PartitionedPrefix.
  final TargetObjectKeyFormatResponse? targetObjectKeyFormat;

  /// Creates a new [LoggingConfigurationResponse].
  /// [destinationBucketName] The name of the bucket where Amazon S3 should store server access log files. You can store log files in any bucket that you own. By default, logs are stored in the bucket where the ``LoggingConfiguration`` property is defined.
  /// [logFilePrefix] A prefix for all log object keys. If you store log files from multiple Amazon S3 buckets in a single bucket, you can use a prefix to distinguish which log files came from which bucket.
  /// [targetObjectKeyFormat] Amazon S3 key format for log objects. Only one format, either PartitionedPrefix or SimplePrefix, is allowed. Describes the key format for server access log file in the target bucket. You can choose between SimplePrefix and PartitionedPrefix.
  LoggingConfigurationResponse({
    this.destinationBucketName,
    this.logFilePrefix,
    this.targetObjectKeyFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationBucketName': ?destinationBucketName,
      'logFilePrefix': ?logFilePrefix,
      'targetObjectKeyFormat': ?targetObjectKeyFormat == null ? null : targetObjectKeyFormat!.toMap(),
    };
  }

  factory LoggingConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return LoggingConfigurationResponse(
      destinationBucketName: map['destinationBucketName'] == null ? null : map['destinationBucketName'] as String,
      logFilePrefix: map['logFilePrefix'] == null ? null : map['logFilePrefix'] as String,
      targetObjectKeyFormat: map['targetObjectKeyFormat'] == null ? null : TargetObjectKeyFormatResponse.fromMap((map['targetObjectKeyFormat'] as Map).cast<String, dynamic>()),
    );
  }
}

