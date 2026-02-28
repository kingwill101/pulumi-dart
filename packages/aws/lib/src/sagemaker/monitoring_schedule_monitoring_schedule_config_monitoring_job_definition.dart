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
  final MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaseline? baseline;
  /// Map of environment variables in the Docker container.
  final Map<String, String>? environment;
  /// Configures the monitoring job to run a specified Docker container image. Fields are documented below.
  final MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringAppSpecification monitoringAppSpecification;
  /// Inputs for the monitoring job. Fields are documented below.
  final MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputs monitoringInputs;
  /// Outputs from the monitoring job to be uploaded to Amazon S3. Fields are documented below.
  final MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfig monitoringOutputConfig;
  /// Identifies the resources, ML compute instances, and ML storage volumes to deploy for a monitoring job. Fields are documented below.
  final MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResources monitoringResources;
  /// Networking options for the monitoring job. Fields are documented below.
  final MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfig? networkConfig;
  /// ARN of an IAM role that Amazon SageMaker AI can assume to perform tasks on your behalf.
  final String roleArn;
  /// How long the monitoring job is allowed to run. Fields are documented below.
  final List<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionStoppingCondition>? stoppingConditions;

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
  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition({
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
      'baseline': ?baseline == null ? null : baseline!.toMap(),
      'environment': ?environment,
      'monitoringAppSpecification': monitoringAppSpecification.toMap(),
      'monitoringInputs': monitoringInputs.toMap(),
      'monitoringOutputConfig': monitoringOutputConfig.toMap(),
      'monitoringResources': monitoringResources.toMap(),
      'networkConfig': ?networkConfig == null ? null : networkConfig!.toMap(),
      'roleArn': roleArn,
      'stoppingConditions': ?stoppingConditions == null ? null : pulumi.Input.encodeList<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionStoppingCondition, Map<String, dynamic>>(stoppingConditions!, (value) => value.toMap()),
    };
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition.fromMap(Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition(
      baseline: map['baseline'] == null ? null : MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionBaseline.fromMap((map['baseline'] as Map).cast<String, dynamic>()),
      environment: map['environment'] == null ? null : (map['environment'] as Map).cast<String, String>(),
      monitoringAppSpecification: MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringAppSpecification.fromMap((map['monitoringAppSpecification'] as Map).cast<String, dynamic>()),
      monitoringInputs: MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringInputs.fromMap((map['monitoringInputs'] as Map).cast<String, dynamic>()),
      monitoringOutputConfig: MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringOutputConfig.fromMap((map['monitoringOutputConfig'] as Map).cast<String, dynamic>()),
      monitoringResources: MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionMonitoringResources.fromMap((map['monitoringResources'] as Map).cast<String, dynamic>()),
      networkConfig: map['networkConfig'] == null ? null : MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionNetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>()),
      roleArn: map['roleArn'] as String,
      stoppingConditions: map['stoppingConditions'] == null ? null : pulumi.Input.decodeList<MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionStoppingCondition>(map['stoppingConditions'], (value) => MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionStoppingCondition.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

