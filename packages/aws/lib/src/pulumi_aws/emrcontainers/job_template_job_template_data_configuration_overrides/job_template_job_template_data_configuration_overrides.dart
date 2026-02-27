// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../job_template_job_template_data_configuration_overrides_application_configuration/job_template_job_template_data_configuration_overrides_application_configuration.dart';
import '../job_template_job_template_data_configuration_overrides_monitoring_configuration/job_template_job_template_data_configuration_overrides_monitoring_configuration.dart';

class JobTemplateJobTemplateDataConfigurationOverrides {
  /// The configurations for the application running by the job run.
  final List<
          JobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration>?
      applicationConfigurations;

  /// The configurations for monitoring.
  final JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfiguration?
      monitoringConfiguration;

  JobTemplateJobTemplateDataConfigurationOverrides({
    this.applicationConfigurations,
    this.monitoringConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applicationConfigurationsValue = applicationConfigurations;
    if (applicationConfigurationsValue != null) {
      map['applicationConfigurations'] = pulumi.Input.encodeList<
          JobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration,
          Map<String,
              dynamic>>(applicationConfigurationsValue, (value) => value.toMap());
    }
    final monitoringConfigurationValue = monitoringConfiguration;
    if (monitoringConfigurationValue != null) {
      map['monitoringConfiguration'] = monitoringConfigurationValue.toMap();
    }
    return map;
  }

  factory JobTemplateJobTemplateDataConfigurationOverrides.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateJobTemplateDataConfigurationOverrides(
      applicationConfigurations: map['applicationConfigurations'] == null
          ? null
          : pulumi.Input.decodeList<
                  JobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration>(
              map['applicationConfigurations'],
              (value) =>
                  JobTemplateJobTemplateDataConfigurationOverridesApplicationConfiguration
                      .fromMap((value as Map).cast<String, dynamic>())),
      monitoringConfiguration: map['monitoringConfiguration'] == null
          ? null
          : JobTemplateJobTemplateDataConfigurationOverridesMonitoringConfiguration
              .fromMap((map['monitoringConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
