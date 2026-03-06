// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_delivery_configuration_log_configuration_cloud_watch_logs_configuration.dart';
import 'log_delivery_configuration_log_configuration_firehose_configuration.dart';
import 'log_delivery_configuration_log_configuration_s3_configuration.dart';

class LogDeliveryConfigurationLogConfiguration {
  /// Configuration for CloudWatch Logs delivery. See CloudWatch Logs Configuration below.
  final pulumi.Input<LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfiguration>? cloudWatchLogsConfiguration;
  /// The event source to configure logging for. Valid values are `userNotification` and `userAuthEvents`.
  final pulumi.Input<String> eventSource;
  /// Configuration for Kinesis Data Firehose delivery. See Firehose Configuration below.
  final pulumi.Input<LogDeliveryConfigurationLogConfigurationFirehoseConfiguration>? firehoseConfiguration;
  /// The log level to set for the event source. Valid values are `ERROR` and `INFO`.
  final pulumi.Input<String> logLevel;
  /// Configuration for S3 delivery. See S3 Configuration below.
  ///
  /// &gt; **Note:** At least one destination configuration (`cloud_watch_logs_configuration`, `firehose_configuration`, or `s3_configuration`) must be specified for each log configuration.
  final pulumi.Input<LogDeliveryConfigurationLogConfigurationS3Configuration>? s3Configuration;

  /// Creates a new [LogDeliveryConfigurationLogConfiguration].
  /// [cloudWatchLogsConfiguration] Configuration for CloudWatch Logs delivery. See CloudWatch Logs Configuration below.
  /// [eventSource] The event source to configure logging for. Valid values are `userNotification` and `userAuthEvents`.
  /// [firehoseConfiguration] Configuration for Kinesis Data Firehose delivery. See Firehose Configuration below.
  /// [logLevel] The log level to set for the event source. Valid values are `ERROR` and `INFO`.
  /// [s3Configuration] Configuration for S3 delivery. See S3 Configuration below.
  const LogDeliveryConfigurationLogConfiguration({
    this.cloudWatchLogsConfiguration,
    required this.eventSource,
    this.firehoseConfiguration,
    required this.logLevel,
    this.s3Configuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchLogsConfiguration': ?pulumi.Input.mapOptionalInputValue<LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfiguration, Map<String, dynamic>>(cloudWatchLogsConfiguration, (value) => value.toMap()),
      'eventSource': eventSource,
      'firehoseConfiguration': ?pulumi.Input.mapOptionalInputValue<LogDeliveryConfigurationLogConfigurationFirehoseConfiguration, Map<String, dynamic>>(firehoseConfiguration, (value) => value.toMap()),
      'logLevel': logLevel,
      's3Configuration': ?pulumi.Input.mapOptionalInputValue<LogDeliveryConfigurationLogConfigurationS3Configuration, Map<String, dynamic>>(s3Configuration, (value) => value.toMap()),
    };
  }

  factory LogDeliveryConfigurationLogConfiguration.fromMap(Map<String, dynamic> map) {
    return LogDeliveryConfigurationLogConfiguration(
      cloudWatchLogsConfiguration: (() { final guardedValue = map['cloudWatchLogsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      eventSource: pulumi.Input.fromValue(map['eventSource'] as String),
      firehoseConfiguration: (() { final guardedValue = map['firehoseConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogDeliveryConfigurationLogConfigurationFirehoseConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logLevel: pulumi.Input.fromValue(map['logLevel'] as String),
      s3Configuration: (() { final guardedValue = map['s3Configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogDeliveryConfigurationLogConfigurationS3Configuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

