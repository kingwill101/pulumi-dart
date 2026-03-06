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
  const ExperimentTemplateLogConfiguration({
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
      cloudwatchLogsConfiguration: (() { final guardedValue = map['cloudwatchLogsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExperimentTemplateLogConfigurationCloudwatchLogsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logSchemaVersion: pulumi.Input.fromValue(map['logSchemaVersion'] as int),
      s3Configuration: (() { final guardedValue = map['s3Configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExperimentTemplateLogConfigurationS3Configuration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

