// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_job_template_data_configuration_overrides_monitoring_configuration_cloud_watch_monitoring_configuration.dart';
import 'job_template_job_template_data_configuration_overrides_monitoring_configuration_s3_monitoring_configuration.dart';

class JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfiguration {
  /// Monitoring configurations for CloudWatch.
  final pulumi.Input<JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration>? cloudWatchMonitoringConfiguration;
  /// Monitoring configurations for the persistent application UI.
  final pulumi.Input<String>? persistentAppUi;
  /// Amazon S3 configuration for monitoring log publishing.
  final pulumi.Input<JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationS3MonitoringConfiguration>? s3MonitoringConfiguration;

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
      'cloudWatchMonitoringConfiguration': ?pulumi.Input.mapOptionalInputValue<JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration, Map<String, dynamic>>(cloudWatchMonitoringConfiguration, (value) => value.toMap()),
      'persistentAppUi': ?persistentAppUi,
      's3MonitoringConfiguration': ?pulumi.Input.mapOptionalInputValue<JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationS3MonitoringConfiguration, Map<String, dynamic>>(s3MonitoringConfiguration, (value) => value.toMap()),
    };
  }

  factory JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfiguration.fromMap(Map<String, dynamic> map) {
    return JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfiguration(
      cloudWatchMonitoringConfiguration: map['cloudWatchMonitoringConfiguration'] == null ? null : ((JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationCloudWatchMonitoringConfiguration.fromMap((map['cloudWatchMonitoringConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      persistentAppUi: map['persistentAppUi'] == null ? null : ((map['persistentAppUi'] as String).input()).input(),
      s3MonitoringConfiguration: map['s3MonitoringConfiguration'] == null ? null : ((JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfigurationS3MonitoringConfiguration.fromMap((map['s3MonitoringConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

