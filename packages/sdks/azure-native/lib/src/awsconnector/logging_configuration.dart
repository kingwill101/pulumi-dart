// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_object_key_format.dart';

/// Definition of LoggingConfiguration
class LoggingConfiguration {
  /// The name of the bucket where Amazon S3 should store server access log files. You can store log files in any bucket that you own. By default, logs are stored in the bucket where the ``LoggingConfiguration`` property is defined.
  final pulumi.Input<String>? destinationBucketName;
  /// A prefix for all log object keys. If you store log files from multiple Amazon S3 buckets in a single bucket, you can use a prefix to distinguish which log files came from which bucket.
  final pulumi.Input<String>? logFilePrefix;
  /// Amazon S3 key format for log objects. Only one format, either PartitionedPrefix or SimplePrefix, is allowed. Describes the key format for server access log file in the target bucket. You can choose between SimplePrefix and PartitionedPrefix.
  final pulumi.Input<TargetObjectKeyFormat>? targetObjectKeyFormat;

  /// Creates a new [LoggingConfiguration].
  /// [destinationBucketName] The name of the bucket where Amazon S3 should store server access log files. You can store log files in any bucket that you own. By default, logs are stored in the bucket where the ``LoggingConfiguration`` property is defined.
  /// [logFilePrefix] A prefix for all log object keys. If you store log files from multiple Amazon S3 buckets in a single bucket, you can use a prefix to distinguish which log files came from which bucket.
  /// [targetObjectKeyFormat] Amazon S3 key format for log objects. Only one format, either PartitionedPrefix or SimplePrefix, is allowed. Describes the key format for server access log file in the target bucket. You can choose between SimplePrefix and PartitionedPrefix.
  const LoggingConfiguration({
    this.destinationBucketName,
    this.logFilePrefix,
    this.targetObjectKeyFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationBucketName': ?destinationBucketName,
      'logFilePrefix': ?logFilePrefix,
      'targetObjectKeyFormat': ?pulumi.Input.mapOptionalInputValue<TargetObjectKeyFormat, Map<String, dynamic>>(targetObjectKeyFormat, (value) => value.toMap()),
    };
  }

  factory LoggingConfiguration.fromMap(Map<String, dynamic> map) {
    return LoggingConfiguration(
      destinationBucketName: (() { final guardedValue = map['destinationBucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logFilePrefix: (() { final guardedValue = map['logFilePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetObjectKeyFormat: (() { final guardedValue = map['targetObjectKeyFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TargetObjectKeyFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
