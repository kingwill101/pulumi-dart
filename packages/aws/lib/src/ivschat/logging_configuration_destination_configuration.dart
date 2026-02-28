// ignore_for_file: unused_element, unnecessary_cast

import 'logging_configuration_destination_configuration_cloudwatch_logs.dart';
import 'logging_configuration_destination_configuration_firehose.dart';
import 'logging_configuration_destination_configuration_s3.dart';

class LoggingConfigurationDestinationConfiguration {
  /// An Amazon CloudWatch Logs destination configuration where chat activity will be logged.
  final LoggingConfigurationDestinationConfigurationCloudwatchLogs?
      cloudwatchLogs;

  /// An Amazon Kinesis Data Firehose destination configuration where chat activity will be logged.
  final LoggingConfigurationDestinationConfigurationFirehose? firehose;

  /// An Amazon S3 destination configuration where chat activity will be logged.
  final LoggingConfigurationDestinationConfigurationS3? s3;

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
    final map = <String, dynamic>{};
    final cloudwatchLogsValue = cloudwatchLogs;
    if (cloudwatchLogsValue != null) {
      map['cloudwatchLogs'] = cloudwatchLogsValue.toMap();
    }
    final firehoseValue = firehose;
    if (firehoseValue != null) {
      map['firehose'] = firehoseValue.toMap();
    }
    final s3Value = s3;
    if (s3Value != null) {
      map['s3'] = s3Value.toMap();
    }
    return map;
  }

  factory LoggingConfigurationDestinationConfiguration.fromMap(
      Map<String, dynamic> map) {
    return LoggingConfigurationDestinationConfiguration(
      cloudwatchLogs: map['cloudwatchLogs'] == null
          ? null
          : LoggingConfigurationDestinationConfigurationCloudwatchLogs.fromMap(
              (map['cloudwatchLogs'] as Map).cast<String, dynamic>()),
      firehose: map['firehose'] == null
          ? null
          : LoggingConfigurationDestinationConfigurationFirehose.fromMap(
              (map['firehose'] as Map).cast<String, dynamic>()),
      s3: map['s3'] == null
          ? null
          : LoggingConfigurationDestinationConfigurationS3.fromMap(
              (map['s3'] as Map).cast<String, dynamic>()),
    );
  }
}
