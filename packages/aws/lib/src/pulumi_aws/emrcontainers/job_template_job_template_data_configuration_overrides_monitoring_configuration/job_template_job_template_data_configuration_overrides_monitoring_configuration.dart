// ignore_for_file: unused_element, unnecessary_cast

import '../job_template_job_template_data_configuration_overrides_monitoring_configuration_cloud_watch_monitoring_configuration/job_template_job_template_data_configuration_overrides_monitoring_configuration_cloud_watch_monitoring_configuration.dart';
import '../job_template_job_template_data_configuration_overrides_monitoring_configuration_s3_monitoring_configuration/job_template_job_template_data_configuration_overrides_monitoring_configuration_s3_monitoring_configuration.dart';

class JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfiguration {
  /// Monitoring configurations for CloudWatch.
  final JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration?
      cloudWatchMonitoringConfiguration;

  /// Monitoring configurations for the persistent application UI.
  final String? persistentAppUi;

  /// Amazon S3 configuration for monitoring log publishing.
  final JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationS3MonitoringConfiguration?
      s3MonitoringConfiguration;

  JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfiguration({
    this.cloudWatchMonitoringConfiguration,
    this.persistentAppUi,
    this.s3MonitoringConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudWatchMonitoringConfigurationValue =
        cloudWatchMonitoringConfiguration;
    if (cloudWatchMonitoringConfigurationValue != null) {
      map['cloudWatchMonitoringConfiguration'] =
          cloudWatchMonitoringConfigurationValue.toMap();
    }
    final persistentAppUiValue = persistentAppUi;
    if (persistentAppUiValue != null) {
      map['persistentAppUi'] = persistentAppUiValue;
    }
    final s3MonitoringConfigurationValue = s3MonitoringConfiguration;
    if (s3MonitoringConfigurationValue != null) {
      map['s3MonitoringConfiguration'] = s3MonitoringConfigurationValue.toMap();
    }
    return map;
  }

  factory JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfiguration.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfiguration(
      cloudWatchMonitoringConfiguration: map[
                  'cloudWatchMonitoringConfiguration'] ==
              null
          ? null
          : JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration
              .fromMap((map['cloudWatchMonitoringConfiguration'] as Map)
                  .cast<String, dynamic>()),
      persistentAppUi: map['persistentAppUi'] == null
          ? null
          : map['persistentAppUi'] as String,
      s3MonitoringConfiguration: map['s3MonitoringConfiguration'] == null
          ? null
          : JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationS3MonitoringConfiguration
              .fromMap((map['s3MonitoringConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
