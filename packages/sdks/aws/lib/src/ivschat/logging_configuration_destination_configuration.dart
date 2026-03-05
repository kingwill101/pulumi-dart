// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_configuration_destination_configuration_cloudwatch_logs.dart';
import 'logging_configuration_destination_configuration_firehose.dart';
import 'logging_configuration_destination_configuration_s3.dart';

class LoggingConfigurationDestinationConfiguration {
  /// An Amazon CloudWatch Logs destination configuration where chat activity will be logged.
  final pulumi.Input<LoggingConfigurationDestinationConfigurationCloudwatchLogs>? cloudwatchLogs;
  /// An Amazon Kinesis Data Firehose destination configuration where chat activity will be logged.
  final pulumi.Input<LoggingConfigurationDestinationConfigurationFirehose>? firehose;
  /// An Amazon S3 destination configuration where chat activity will be logged.
  final pulumi.Input<LoggingConfigurationDestinationConfigurationS3>? s3;

  /// Creates a new [LoggingConfigurationDestinationConfiguration].
  /// [cloudwatchLogs] An Amazon CloudWatch Logs destination configuration where chat activity will be logged.
  /// [firehose] An Amazon Kinesis Data Firehose destination configuration where chat activity will be logged.
  /// [s3] An Amazon S3 destination configuration where chat activity will be logged.
  LoggingConfigurationDestinationConfiguration({
    this.cloudwatchLogs,
    this.firehose,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogs': ?pulumi.Input.mapOptionalInputValue<LoggingConfigurationDestinationConfigurationCloudwatchLogs, Map<String, dynamic>>(cloudwatchLogs, (value) => value.toMap()),
      'firehose': ?pulumi.Input.mapOptionalInputValue<LoggingConfigurationDestinationConfigurationFirehose, Map<String, dynamic>>(firehose, (value) => value.toMap()),
      's3': ?pulumi.Input.mapOptionalInputValue<LoggingConfigurationDestinationConfigurationS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory LoggingConfigurationDestinationConfiguration.fromMap(Map<String, dynamic> map) {
    return LoggingConfigurationDestinationConfiguration(
      cloudwatchLogs: (() { final guardedValue = map['cloudwatchLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoggingConfigurationDestinationConfigurationCloudwatchLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      firehose: (() { final guardedValue = map['firehose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoggingConfigurationDestinationConfigurationFirehose.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LoggingConfigurationDestinationConfigurationS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

