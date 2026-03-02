// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_template_log_configuration_cloudwatch_logs_configuration.dart';
import 'experiment_template_log_configuration_s3_configuration.dart';

class ExperimentTemplateLogConfiguration {
  /// The configuration for experiment logging to Amazon CloudWatch Logs. See below.
  final pulumi.Input<ExperimentTemplateLogConfigurationCloudwatchLogsConfiguration>? cloudwatchLogsConfiguration;
  /// The schema version. See [documentation](https://docs.aws.amazon.com/fis/latest/userguide/monitoring-logging.html#experiment-log-schema) for the list of schema versions.
  final pulumi.Input<int> logSchemaVersion;
  /// The configuration for experiment logging to Amazon S3. See below.
  final pulumi.Input<ExperimentTemplateLogConfigurationS3Configuration>? s3Configuration;

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
    return <String, dynamic>{
      'cloudwatchLogsConfiguration': ?pulumi.Input.mapOptionalInputValue<ExperimentTemplateLogConfigurationCloudwatchLogsConfiguration, Map<String, dynamic>>(cloudwatchLogsConfiguration, (value) => value.toMap()),
      'logSchemaVersion': logSchemaVersion,
      's3Configuration': ?pulumi.Input.mapOptionalInputValue<ExperimentTemplateLogConfigurationS3Configuration, Map<String, dynamic>>(s3Configuration, (value) => value.toMap()),
    };
  }

  factory ExperimentTemplateLogConfiguration.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateLogConfiguration(
      cloudwatchLogsConfiguration: map['cloudwatchLogsConfiguration'] == null ? null : (ExperimentTemplateLogConfigurationCloudwatchLogsConfiguration.fromMap((map['cloudwatchLogsConfiguration'] as Map).cast<String, dynamic>())).input(),
      logSchemaVersion: (map['logSchemaVersion'] as int).input(),
      s3Configuration: map['s3Configuration'] == null ? null : (ExperimentTemplateLogConfigurationS3Configuration.fromMap((map['s3Configuration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

