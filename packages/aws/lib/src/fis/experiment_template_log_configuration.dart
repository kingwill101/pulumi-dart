// ignore_for_file: unused_element, unnecessary_cast

import 'experiment_template_log_configuration_cloudwatch_logs_configuration.dart';
import 'experiment_template_log_configuration_s3_configuration.dart';

class ExperimentTemplateLogConfiguration {
  /// The configuration for experiment logging to Amazon CloudWatch Logs. See below.
  final ExperimentTemplateLogConfigurationCloudwatchLogsConfiguration?
      cloudwatchLogsConfiguration;

  /// The schema version. See [documentation](https://docs.aws.amazon.com/fis/latest/userguide/monitoring-logging.html#experiment-log-schema) for the list of schema versions.
  final int logSchemaVersion;

  /// The configuration for experiment logging to Amazon S3. See below.
  final ExperimentTemplateLogConfigurationS3Configuration? s3Configuration;

  /// Creates a new [ExperimentTemplateLogConfiguration].
  /// [cloudwatchLogsConfiguration] The configuration for experiment logging to Amazon CloudWatch Logs. See below.
  /// [logSchemaVersion] The schema version. See [documentation](https://docs.aws.amazon.com/fis/latest/userguide/monitoring-logging.html#experiment-log-schema) for the list of schema versions.
  /// [s3Configuration] The configuration for experiment logging to Amazon S3. See below.
  ExperimentTemplateLogConfiguration({
    this.cloudwatchLogsConfiguration,
    required this.logSchemaVersion,
    this.s3Configuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudwatchLogsConfigurationValue = cloudwatchLogsConfiguration;
    if (cloudwatchLogsConfigurationValue != null) {
      map['cloudwatchLogsConfiguration'] =
          cloudwatchLogsConfigurationValue.toMap();
    }
    map['logSchemaVersion'] = logSchemaVersion;
    final s3ConfigurationValue = s3Configuration;
    if (s3ConfigurationValue != null) {
      map['s3Configuration'] = s3ConfigurationValue.toMap();
    }
    return map;
  }

  factory ExperimentTemplateLogConfiguration.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateLogConfiguration(
      cloudwatchLogsConfiguration: map['cloudwatchLogsConfiguration'] == null
          ? null
          : ExperimentTemplateLogConfigurationCloudwatchLogsConfiguration
              .fromMap((map['cloudwatchLogsConfiguration'] as Map)
                  .cast<String, dynamic>()),
      logSchemaVersion: map['logSchemaVersion'] as int,
      s3Configuration: map['s3Configuration'] == null
          ? null
          : ExperimentTemplateLogConfigurationS3Configuration.fromMap(
              (map['s3Configuration'] as Map).cast<String, dynamic>()),
    );
  }
}
