// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_network_config_vpc_config.dart';

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfig {
  /// Whether to encrypt all communications between distributed processing jobs.
  final pulumi.Input<bool>? enableInterContainerTrafficEncryption;
  /// Whether to allow inbound and outbound network calls to and from the containers used for the processing job.
  final pulumi.Input<bool>? enableNetworkIsolation;
  /// VPC that SageMaker jobs, hosted models, and compute resources have access to. Fields are documented below.
  final pulumi.Input<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfigVpcConfig>? vpcConfig;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfig].
  /// [enableInterContainerTrafficEncryption] Whether to encrypt all communications between distributed processing jobs.
  /// [enableNetworkIsolation] Whether to allow inbound and outbound network calls to and from the containers used for the processing job.
  /// [vpcConfig] VPC that SageMaker jobs, hosted models, and compute resources have access to. Fields are documented below.
  const MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfig({
    this.enableInterContainerTrafficEncryption,
    this.enableNetworkIsolation,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableInterContainerTrafficEncryption': ?enableInterContainerTrafficEncryption,
      'enableNetworkIsolation': ?enableNetworkIsolation,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfigVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfig.fromMap(Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfig(
      enableInterContainerTrafficEncryption: (() { final guardedValue = map['enableInterContainerTrafficEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNetworkIsolation: (() { final guardedValue = map['enableNetworkIsolation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfigVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
