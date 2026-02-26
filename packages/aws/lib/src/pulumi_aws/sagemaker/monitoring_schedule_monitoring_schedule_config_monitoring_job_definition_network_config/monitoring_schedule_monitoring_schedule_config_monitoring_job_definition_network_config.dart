// ignore_for_file: unused_element, unnecessary_cast

import '../monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_network_config_vpc_config/monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_network_config_vpc_config.dart';

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfig {
  /// Whether to encrypt all communications between distributed processing jobs.
  final bool? enableInterContainerTrafficEncryption;

  /// Whether to allow inbound and outbound network calls to and from the containers used for the processing job.
  final bool? enableNetworkIsolation;

  /// VPC that SageMaker jobs, hosted models, and compute resources have access to. Fields are documented below.
  final MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfigVpcConfig?
      vpcConfig;

  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfig({
    this.enableInterContainerTrafficEncryption,
    this.enableNetworkIsolation,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableInterContainerTrafficEncryptionValue =
        enableInterContainerTrafficEncryption;
    if (enableInterContainerTrafficEncryptionValue != null) {
      map['enableInterContainerTrafficEncryption'] =
          enableInterContainerTrafficEncryptionValue;
    }
    final enableNetworkIsolationValue = enableNetworkIsolation;
    if (enableNetworkIsolationValue != null) {
      map['enableNetworkIsolation'] = enableNetworkIsolationValue;
    }
    final vpcConfigValue = vpcConfig;
    if (vpcConfigValue != null) {
      map['vpcConfig'] = vpcConfigValue.toMap();
    }
    return map;
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfig.fromMap(
      Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfig(
      enableInterContainerTrafficEncryption:
          map['enableInterContainerTrafficEncryption'] == null
              ? null
              : map['enableInterContainerTrafficEncryption'] as bool,
      enableNetworkIsolation: map['enableNetworkIsolation'] == null
          ? null
          : map['enableNetworkIsolation'] as bool,
      vpcConfig: map['vpcConfig'] == null
          ? null
          : MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfigVpcConfig
              .fromMap((map['vpcConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
