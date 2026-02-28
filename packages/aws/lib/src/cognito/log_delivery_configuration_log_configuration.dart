// ignore_for_file: unused_element, unnecessary_cast

import 'log_delivery_configuration_log_configuration_cloud_watch_logs_configuration.dart';
import 'log_delivery_configuration_log_configuration_firehose_configuration.dart';
import 'log_delivery_configuration_log_configuration_s3_configuration.dart';

class LogDeliveryConfigurationLogConfiguration {
  /// Configuration for CloudWatch Logs delivery. See CloudWatch Logs Configuration below.
  final LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfiguration?
      cloudWatchLogsConfiguration;

  /// The event source to configure logging for. Valid values are `userNotification` and `userAuthEvents`.
  final String eventSource;

  /// Configuration for Kinesis Data Firehose delivery. See Firehose Configuration below.
  final LogDeliveryConfigurationLogConfigurationFirehoseConfiguration?
      firehoseConfiguration;

  /// The log level to set for the event source. Valid values are `ERROR` and `INFO`.
  final String logLevel;

  /// Configuration for S3 delivery. See S3 Configuration below.
  ///
  /// > **Note:** At least one destination configuration (`cloud_watch_logs_configuration`, `firehose_configuration`, or `s3_configuration`) must be specified for each log configuration.
  final LogDeliveryConfigurationLogConfigurationS3Configuration?
      s3Configuration;

  /// Creates a new [LogDeliveryConfigurationLogConfiguration].
  /// [cloudWatchLogsConfiguration] Configuration for CloudWatch Logs delivery. See CloudWatch Logs Configuration below.
  /// [eventSource] The event source to configure logging for. Valid values are `userNotification` and `userAuthEvents`.
  /// [firehoseConfiguration] Configuration for Kinesis Data Firehose delivery. See Firehose Configuration below.
  /// [logLevel] The log level to set for the event source. Valid values are `ERROR` and `INFO`.
  /// [s3Configuration] Configuration for S3 delivery. See S3 Configuration below.
  LogDeliveryConfigurationLogConfiguration({
    this.cloudWatchLogsConfiguration,
    required this.eventSource,
    this.firehoseConfiguration,
    required this.logLevel,
    this.s3Configuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudWatchLogsConfigurationValue = cloudWatchLogsConfiguration;
    if (cloudWatchLogsConfigurationValue != null) {
      map['cloudWatchLogsConfiguration'] =
          cloudWatchLogsConfigurationValue.toMap();
    }
    map['eventSource'] = eventSource;
    final firehoseConfigurationValue = firehoseConfiguration;
    if (firehoseConfigurationValue != null) {
      map['firehoseConfiguration'] = firehoseConfigurationValue.toMap();
    }
    map['logLevel'] = logLevel;
    final s3ConfigurationValue = s3Configuration;
    if (s3ConfigurationValue != null) {
      map['s3Configuration'] = s3ConfigurationValue.toMap();
    }
    return map;
  }

  factory LogDeliveryConfigurationLogConfiguration.fromMap(
      Map<String, dynamic> map) {
    return LogDeliveryConfigurationLogConfiguration(
      cloudWatchLogsConfiguration: map['cloudWatchLogsConfiguration'] == null
          ? null
          : LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfiguration
              .fromMap((map['cloudWatchLogsConfiguration'] as Map)
                  .cast<String, dynamic>()),
      eventSource: map['eventSource'] as String,
      firehoseConfiguration: map['firehoseConfiguration'] == null
          ? null
          : LogDeliveryConfigurationLogConfigurationFirehoseConfiguration
              .fromMap((map['firehoseConfiguration'] as Map)
                  .cast<String, dynamic>()),
      logLevel: map['logLevel'] as String,
      s3Configuration: map['s3Configuration'] == null
          ? null
          : LogDeliveryConfigurationLogConfigurationS3Configuration.fromMap(
              (map['s3Configuration'] as Map).cast<String, dynamic>()),
    );
  }
}
