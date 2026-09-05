// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_baseline.dart';
import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_app_specification.dart';
import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_inputs.dart';
import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_output_config.dart';
import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_monitoring_resources.dart';
import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_network_config.dart';
import 'monitoring_schedule_monitoring_schedule_config_monitoring_job_definition_stopping_condition.dart';

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition {
  /// Baseline configuration used to validate that the data conforms to the specified constraints and statistics. Fields are documented below.
  final pulumi.Input<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaseline?>? baseline;
  /// Map of environment variables in the Docker container.
  final pulumi.Input<Map<String, String>?>? environment;
  /// Configures the monitoring job to run a specified Docker container image. Fields are documented below.
  final pulumi.Input<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringAppSpecification> monitoringAppSpecification;
  /// Inputs for the monitoring job. Fields are documented below.
  final pulumi.Input<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputs> monitoringInputs;
  /// Outputs from the monitoring job to be uploaded to Amazon S3. Fields are documented below.
  final pulumi.Input<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfig> monitoringOutputConfig;
  /// Identifies the resources, ML compute instances, and ML storage volumes to deploy for a monitoring job. Fields are documented below.
  final pulumi.Input<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResources> monitoringResources;
  /// Networking options for the monitoring job. Fields are documented below.
  final pulumi.Input<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfig?>? networkConfig;
  /// ARN of an IAM role that Amazon SageMaker AI can assume to perform tasks on your behalf.
  final pulumi.Input<String> roleArn;
  /// How long the monitoring job is allowed to run. Fields are documented below.
  final pulumi.Input<List<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionStoppingCondition>?>? stoppingConditions;

  /// Creates a new [MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition].
  /// [baseline] Baseline configuration used to validate that the data conforms to the specified constraints and statistics. Fields are documented below.
  /// [environment] Map of environment variables in the Docker container.
  /// [monitoringAppSpecification] Configures the monitoring job to run a specified Docker container image. Fields are documented below.
  /// [monitoringInputs] Inputs for the monitoring job. Fields are documented below.
  /// [monitoringOutputConfig] Outputs from the monitoring job to be uploaded to Amazon S3. Fields are documented below.
  /// [monitoringResources] Identifies the resources, ML compute instances, and ML storage volumes to deploy for a monitoring job. Fields are documented below.
  /// [networkConfig] Networking options for the monitoring job. Fields are documented below.
  /// [roleArn] ARN of an IAM role that Amazon SageMaker AI can assume to perform tasks on your behalf.
  /// [stoppingConditions] How long the monitoring job is allowed to run. Fields are documented below.
  const MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition({
    this.baseline,
    this.environment,
    required this.monitoringAppSpecification,
    required this.monitoringInputs,
    required this.monitoringOutputConfig,
    required this.monitoringResources,
    this.networkConfig,
    required this.roleArn,
    this.stoppingConditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseline': ?pulumi.Input.mapOptionalInputValue<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaseline, Map<String, dynamic>>(baseline, (value) => value.toMap()),
      'environment': ?environment,
      'monitoringAppSpecification': pulumi.Input.mapInputValue<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringAppSpecification, Map<String, dynamic>>(monitoringAppSpecification, (value) => value.toMap()),
      'monitoringInputs': pulumi.Input.mapInputValue<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputs, Map<String, dynamic>>(monitoringInputs, (value) => value.toMap()),
      'monitoringOutputConfig': pulumi.Input.mapInputValue<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfig, Map<String, dynamic>>(monitoringOutputConfig, (value) => value.toMap()),
      'monitoringResources': pulumi.Input.mapInputValue<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResources, Map<String, dynamic>>(monitoringResources, (value) => value.toMap()),
      'networkConfig': ?pulumi.Input.mapOptionalInputValue<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfig, Map<String, dynamic>>(networkConfig, (value) => value.toMap()),
      'roleArn': roleArn,
      'stoppingConditions': ?pulumi.Input.mapOptionalInputValue<List<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionStoppingCondition>, List<Map<String, dynamic>>>(stoppingConditions, (value) => pulumi.Input.encodeList<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionStoppingCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition.fromMap(Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition(
      baseline: (() { final guardedValue = map['baseline']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaseline.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      monitoringAppSpecification: pulumi.Input.fromValue(MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringAppSpecification.fromMap((map['monitoringAppSpecification']! as Map).cast<String, dynamic>())),
      monitoringInputs: pulumi.Input.fromValue(MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputs.fromMap((map['monitoringInputs']! as Map).cast<String, dynamic>())),
      monitoringOutputConfig: pulumi.Input.fromValue(MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfig.fromMap((map['monitoringOutputConfig']! as Map).cast<String, dynamic>())),
      monitoringResources: pulumi.Input.fromValue(MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResources.fromMap((map['monitoringResources']! as Map).cast<String, dynamic>())),
      networkConfig: (() { final guardedValue = map['networkConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      stoppingConditions: (() { final guardedValue = map['stoppingConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionStoppingCondition>(guardedValue, (value) => MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionStoppingCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
