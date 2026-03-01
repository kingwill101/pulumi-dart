// ignore_for_file: unused_element, unnecessary_cast

import 'job_template_job_template_data_configuration_overrides_monitoring_configuration_cloud_watch_monitoring_configuration.dart';
import 'job_template_job_template_data_configuration_overrides_monitoring_configuration_s3_monitoring_configuration.dart';

class JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfiguration {
  /// Monitoring configurations for CloudWatch.
  final JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration?
  cloudWatchMonitoringConfiguration;

  /// Monitoring configurations for the persistent application UI.
  final String? persistentAppUi;

  /// Amazon S3 configuration for monitoring log publishing.
  final JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationS3MonitoringConfiguration?
  s3MonitoringConfiguration;

  /// Creates a new [JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfiguration].
  /// [cloudWatchMonitoringConfiguration] Monitoring configurations for CloudWatch.
  /// [persistentAppUi] Monitoring configurations for the persistent application UI.
  /// [s3MonitoringConfiguration] Amazon S3 configuration for monitoring log publishing.
  JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfiguration({
    this.cloudWatchMonitoringConfiguration,
    this.persistentAppUi,
    this.s3MonitoringConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchMonitoringConfiguration':
          ?cloudWatchMonitoringConfiguration == null
          ? null
          : cloudWatchMonitoringConfiguration!.toMap(),
      'persistentAppUi': ?persistentAppUi,
      's3MonitoringConfiguration': ?s3MonitoringConfiguration == null
          ? null
          : s3MonitoringConfiguration!.toMap(),
    };
  }

  factory JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfiguration(
      cloudWatchMonitoringConfiguration:
          map['cloudWatchMonitoringConfiguration'] == null
          ? null
          : JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration.fromMap(
              (map['cloudWatchMonitoringConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
      persistentAppUi: map['persistentAppUi'] == null
          ? null
          : map['persistentAppUi'] as String,
      s3MonitoringConfiguration: map['s3MonitoringConfiguration'] == null
          ? null
          : JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationS3MonitoringConfiguration.fromMap(
              (map['s3MonitoringConfiguration'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
