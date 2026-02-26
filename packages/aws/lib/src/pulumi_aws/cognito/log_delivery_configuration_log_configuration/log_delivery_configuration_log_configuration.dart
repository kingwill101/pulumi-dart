// ignore_for_file: unused_element, unnecessary_cast

import '../log_delivery_configuration_log_configuration_cloud_watch_logs_configuration/log_delivery_configuration_log_configuration_cloud_watch_logs_configuration.dart';
import '../log_delivery_configuration_log_configuration_firehose_configuration/log_delivery_configuration_log_configuration_firehose_configuration.dart';
import '../log_delivery_configuration_log_configuration_s3_configuration/log_delivery_configuration_log_configuration_s3_configuration.dart';

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
  /// > **Note:** At least one destination configuration (<span pulumi-lang-nodejs="`cloudWatchLogsConfiguration`" pulumi-lang-dotnet="`CloudWatchLogsConfiguration`" pulumi-lang-go="`cloudWatchLogsConfiguration`" pulumi-lang-python="`cloud_watch_logs_configuration`" pulumi-lang-yaml="`cloudWatchLogsConfiguration`" pulumi-lang-java="`cloudWatchLogsConfiguration`">`cloud_watch_logs_configuration`</span>, <span pulumi-lang-nodejs="`firehoseConfiguration`" pulumi-lang-dotnet="`FirehoseConfiguration`" pulumi-lang-go="`firehoseConfiguration`" pulumi-lang-python="`firehose_configuration`" pulumi-lang-yaml="`firehoseConfiguration`" pulumi-lang-java="`firehoseConfiguration`">`firehose_configuration`</span>, or <span pulumi-lang-nodejs="`s3Configuration`" pulumi-lang-dotnet="`S3Configuration`" pulumi-lang-go="`s3Configuration`" pulumi-lang-python="`s3_configuration`" pulumi-lang-yaml="`s3Configuration`" pulumi-lang-java="`s3Configuration`">`s3_configuration`</span>) must be specified for each log configuration.
  final LogDeliveryConfigurationLogConfigurationS3Configuration?
      s3Configuration;

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
