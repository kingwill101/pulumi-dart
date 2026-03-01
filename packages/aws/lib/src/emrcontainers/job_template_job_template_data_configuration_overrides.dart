// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_job_template_data_configuration_overrides_application_configuration.dart';
import 'job_template_job_template_data_configuration_overrides_monitoring_configuration.dart';

class JobTemplateJobTemplateDataConfigurationOverrides {
  /// The configurations for the application running by the job run.
  final List<JobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration>? applicationConfigurations;
  /// The configurations for monitoring.
  final JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfiguration? monitoringConfiguration;

  /// Creates a new [JobTemplateJobTemplateDataConfigurationOverrides].
  /// [applicationConfigurations] The configurations for the application running by the job run.
  /// [monitoringConfiguration] The configurations for monitoring.
  JobTemplateJobTemplateDataConfigurationOverrides({
    this.applicationConfigurations,
    this.monitoringConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationConfigurations': ?applicationConfigurations == null ? null : pulumi.Input.encodeList<JobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration, Map<String, dynamic>>(applicationConfigurations!, (value) => value.toMap()),
      'monitoringConfiguration': ?monitoringConfiguration == null ? null : monitoringConfiguration!.toMap(),
    };
  }

  factory JobTemplateJobTemplateDataConfigurationOverrides.fromMap(Map<String, dynamic> map) {
    return JobTemplateJobTemplateDataConfigurationOverrides(
      applicationConfigurations: map['applicationConfigurations'] == null ? null : pulumi.Input.decodeList<JobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration>(map['applicationConfigurations'], (value) => JobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      monitoringConfiguration: map['monitoringConfiguration'] == null ? null : JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfiguration.fromMap((map['monitoringConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

