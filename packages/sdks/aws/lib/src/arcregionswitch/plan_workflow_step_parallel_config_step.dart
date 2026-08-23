// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_arc_routing_control_config.dart';
import 'plan_workflow_step_parallel_config_step_aurora_provisioned_scaling_config.dart';
import 'plan_workflow_step_parallel_config_step_aurora_serverless_scaling_config.dart';
import 'plan_workflow_step_parallel_config_step_custom_action_lambda_config.dart';
import 'plan_workflow_step_parallel_config_step_document_db_config.dart';
import 'plan_workflow_step_parallel_config_step_ec2_asg_capacity_increase_config.dart';
import 'plan_workflow_step_parallel_config_step_ecs_capacity_increase_config.dart';
import 'plan_workflow_step_parallel_config_step_eks_resource_scaling_config.dart';
import 'plan_workflow_step_parallel_config_step_execution_approval_config.dart';
import 'plan_workflow_step_parallel_config_step_global_aurora_config.dart';
import 'plan_workflow_step_parallel_config_step_lambda_event_source_mapping_config.dart';
import 'plan_workflow_step_parallel_config_step_neptune_global_database_config.dart';
import 'plan_workflow_step_parallel_config_step_rds_create_cross_region_read_replica_config.dart';
import 'plan_workflow_step_parallel_config_step_rds_promote_read_replica_config.dart';
import 'plan_workflow_step_parallel_config_step_region_switch_plan_config.dart';
import 'plan_workflow_step_parallel_config_step_route53_health_check_config.dart';

class PlanWorkflowStepParallelConfigStep {
  /// Configuration for ARC routing control. See `arcRoutingControlConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepArcRoutingControlConfig>>? arcRoutingControlConfigs;
  /// Configuration for Aurora provisioned scaling. See `auroraProvisionedScalingConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepAuroraProvisionedScalingConfig>>? auroraProvisionedScalingConfigs;
  /// Configuration for Aurora Serverless scaling. See `auroraServerlessScalingConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepAuroraServerlessScalingConfig>>? auroraServerlessScalingConfigs;
  /// Configuration for Lambda function execution. See `customActionLambdaConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig>>? customActionLambdaConfigs;
  /// Description of the step.
  final pulumi.Input<String>? description;
  /// Configuration for DocumentDB global cluster operations. See `documentDbConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepDocumentDbConfig>>? documentDbConfigs;
  /// Configuration for EC2 Auto Scaling group capacity increase. See `ec2AsgCapacityIncreaseConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig>>? ec2AsgCapacityIncreaseConfigs;
  /// Configuration for ECS service capacity increase. See `ecsCapacityIncreaseConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig>>? ecsCapacityIncreaseConfigs;
  /// Configuration for EKS resource scaling. See `eksResourceScalingConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepEksResourceScalingConfig>>? eksResourceScalingConfigs;
  /// Configuration for manual approval steps. See `executionApprovalConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepExecutionApprovalConfig>>? executionApprovalConfigs;
  /// Type of execution block. Valid values: `ARCRegionSwitchPlan`, `ARCRoutingControl`, `AuroraGlobalDatabase`, `CustomActionLambda`, `DocumentDb`, `EC2AutoScaling`, `ECSServiceScaling`, `EKSResourceScaling`, `ManualApproval`, `Parallel`, `RdsCreateCrossRegionReplica`, `RdsPromoteReadReplica`, `Route53HealthCheck`.
  final pulumi.Input<String> executionBlockType;
  /// Configuration for Aurora Global Database operations. See `globalAuroraConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepGlobalAuroraConfig>>? globalAuroraConfigs;
  /// Configuration for Lambda event source mapping operations. See `lambdaEventSourceMappingConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepLambdaEventSourceMappingConfig>>? lambdaEventSourceMappingConfigs;
  /// Name of the step.
  final pulumi.Input<String> name;
  /// Configuration for Neptune global database operations. See `neptuneGlobalDatabaseConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepNeptuneGlobalDatabaseConfig>>? neptuneGlobalDatabaseConfigs;
  /// Configuration for creating cross-region RDS read replicas. See `rdsCreateCrossRegionReadReplicaConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepRdsCreateCrossRegionReadReplicaConfig>>? rdsCreateCrossRegionReadReplicaConfigs;
  /// Configuration for promoting RDS read replicas. See `rdsPromoteReadReplicaConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepRdsPromoteReadReplicaConfig>>? rdsPromoteReadReplicaConfigs;
  /// Configuration for executing a nested region switch plan. See `regionSwitchPlanConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepRegionSwitchPlanConfig>>? regionSwitchPlanConfigs;
  /// Configuration for Route53 health check operations. See `route53HealthCheckConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig>>? route53HealthCheckConfigs;

  /// Creates a new [PlanWorkflowStepParallelConfigStep].
  /// [arcRoutingControlConfigs] Configuration for ARC routing control. See `arcRoutingControlConfig` Block for details.
  /// [auroraProvisionedScalingConfigs] Configuration for Aurora provisioned scaling. See `auroraProvisionedScalingConfig` Block for details.
  /// [auroraServerlessScalingConfigs] Configuration for Aurora Serverless scaling. See `auroraServerlessScalingConfig` Block for details.
  /// [customActionLambdaConfigs] Configuration for Lambda function execution. See `customActionLambdaConfig` Block for details.
  /// [description] Description of the step.
  /// [documentDbConfigs] Configuration for DocumentDB global cluster operations. See `documentDbConfig` Block for details.
  /// [ec2AsgCapacityIncreaseConfigs] Configuration for EC2 Auto Scaling group capacity increase. See `ec2AsgCapacityIncreaseConfig` Block for details.
  /// [ecsCapacityIncreaseConfigs] Configuration for ECS service capacity increase. See `ecsCapacityIncreaseConfig` Block for details.
  /// [eksResourceScalingConfigs] Configuration for EKS resource scaling. See `eksResourceScalingConfig` Block for details.
  /// [executionApprovalConfigs] Configuration for manual approval steps. See `executionApprovalConfig` Block for details.
  /// [executionBlockType] Type of execution block. Valid values: `ARCRegionSwitchPlan`, `ARCRoutingControl`, `AuroraGlobalDatabase`, `CustomActionLambda`, `DocumentDb`, `EC2AutoScaling`, `ECSServiceScaling`, `EKSResourceScaling`, `ManualApproval`, `Parallel`, `RdsCreateCrossRegionReplica`, `RdsPromoteReadReplica`, `Route53HealthCheck`.
  /// [globalAuroraConfigs] Configuration for Aurora Global Database operations. See `globalAuroraConfig` Block for details.
  /// [lambdaEventSourceMappingConfigs] Configuration for Lambda event source mapping operations. See `lambdaEventSourceMappingConfig` Block for details.
  /// [name] Name of the step.
  /// [neptuneGlobalDatabaseConfigs] Configuration for Neptune global database operations. See `neptuneGlobalDatabaseConfig` Block for details.
  /// [rdsCreateCrossRegionReadReplicaConfigs] Configuration for creating cross-region RDS read replicas. See `rdsCreateCrossRegionReadReplicaConfig` Block for details.
  /// [rdsPromoteReadReplicaConfigs] Configuration for promoting RDS read replicas. See `rdsPromoteReadReplicaConfig` Block for details.
  /// [regionSwitchPlanConfigs] Configuration for executing a nested region switch plan. See `regionSwitchPlanConfig` Block for details.
  /// [route53HealthCheckConfigs] Configuration for Route53 health check operations. See `route53HealthCheckConfig` Block for details.
  const PlanWorkflowStepParallelConfigStep({
    this.arcRoutingControlConfigs,
    this.auroraProvisionedScalingConfigs,
    this.auroraServerlessScalingConfigs,
    this.customActionLambdaConfigs,
    this.description,
    this.documentDbConfigs,
    this.ec2AsgCapacityIncreaseConfigs,
    this.ecsCapacityIncreaseConfigs,
    this.eksResourceScalingConfigs,
    this.executionApprovalConfigs,
    required this.executionBlockType,
    this.globalAuroraConfigs,
    this.lambdaEventSourceMappingConfigs,
    required this.name,
    this.neptuneGlobalDatabaseConfigs,
    this.rdsCreateCrossRegionReadReplicaConfigs,
    this.rdsPromoteReadReplicaConfigs,
    this.regionSwitchPlanConfigs,
    this.route53HealthCheckConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcRoutingControlConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepArcRoutingControlConfig>, List<Map<String, dynamic>>>(arcRoutingControlConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepArcRoutingControlConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'auroraProvisionedScalingConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepAuroraProvisionedScalingConfig>, List<Map<String, dynamic>>>(auroraProvisionedScalingConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepAuroraProvisionedScalingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'auroraServerlessScalingConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepAuroraServerlessScalingConfig>, List<Map<String, dynamic>>>(auroraServerlessScalingConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepAuroraServerlessScalingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customActionLambdaConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig>, List<Map<String, dynamic>>>(customActionLambdaConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'documentDbConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepDocumentDbConfig>, List<Map<String, dynamic>>>(documentDbConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepDocumentDbConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ec2AsgCapacityIncreaseConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig>, List<Map<String, dynamic>>>(ec2AsgCapacityIncreaseConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ecsCapacityIncreaseConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig>, List<Map<String, dynamic>>>(ecsCapacityIncreaseConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eksResourceScalingConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepEksResourceScalingConfig>, List<Map<String, dynamic>>>(eksResourceScalingConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepEksResourceScalingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'executionApprovalConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepExecutionApprovalConfig>, List<Map<String, dynamic>>>(executionApprovalConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepExecutionApprovalConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'executionBlockType': executionBlockType,
      'globalAuroraConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepGlobalAuroraConfig>, List<Map<String, dynamic>>>(globalAuroraConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepGlobalAuroraConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lambdaEventSourceMappingConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepLambdaEventSourceMappingConfig>, List<Map<String, dynamic>>>(lambdaEventSourceMappingConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepLambdaEventSourceMappingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'neptuneGlobalDatabaseConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepNeptuneGlobalDatabaseConfig>, List<Map<String, dynamic>>>(neptuneGlobalDatabaseConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepNeptuneGlobalDatabaseConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rdsCreateCrossRegionReadReplicaConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepRdsCreateCrossRegionReadReplicaConfig>, List<Map<String, dynamic>>>(rdsCreateCrossRegionReadReplicaConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepRdsCreateCrossRegionReadReplicaConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rdsPromoteReadReplicaConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepRdsPromoteReadReplicaConfig>, List<Map<String, dynamic>>>(rdsPromoteReadReplicaConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepRdsPromoteReadReplicaConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regionSwitchPlanConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepRegionSwitchPlanConfig>, List<Map<String, dynamic>>>(regionSwitchPlanConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepRegionSwitchPlanConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'route53HealthCheckConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig>, List<Map<String, dynamic>>>(route53HealthCheckConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanWorkflowStepParallelConfigStep.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStep(
      arcRoutingControlConfigs: (() { final guardedValue = map['arcRoutingControlConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepArcRoutingControlConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepArcRoutingControlConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      auroraProvisionedScalingConfigs: (() { final guardedValue = map['auroraProvisionedScalingConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepAuroraProvisionedScalingConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepAuroraProvisionedScalingConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      auroraServerlessScalingConfigs: (() { final guardedValue = map['auroraServerlessScalingConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepAuroraServerlessScalingConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepAuroraServerlessScalingConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customActionLambdaConfigs: (() { final guardedValue = map['customActionLambdaConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentDbConfigs: (() { final guardedValue = map['documentDbConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepDocumentDbConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepDocumentDbConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ec2AsgCapacityIncreaseConfigs: (() { final guardedValue = map['ec2AsgCapacityIncreaseConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ecsCapacityIncreaseConfigs: (() { final guardedValue = map['ecsCapacityIncreaseConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      eksResourceScalingConfigs: (() { final guardedValue = map['eksResourceScalingConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepEksResourceScalingConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepEksResourceScalingConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      executionApprovalConfigs: (() { final guardedValue = map['executionApprovalConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepExecutionApprovalConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepExecutionApprovalConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      executionBlockType: pulumi.Input.fromValue(map['executionBlockType'] as String),
      globalAuroraConfigs: (() { final guardedValue = map['globalAuroraConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepGlobalAuroraConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepGlobalAuroraConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lambdaEventSourceMappingConfigs: (() { final guardedValue = map['lambdaEventSourceMappingConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepLambdaEventSourceMappingConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepLambdaEventSourceMappingConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      neptuneGlobalDatabaseConfigs: (() { final guardedValue = map['neptuneGlobalDatabaseConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepNeptuneGlobalDatabaseConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepNeptuneGlobalDatabaseConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rdsCreateCrossRegionReadReplicaConfigs: (() { final guardedValue = map['rdsCreateCrossRegionReadReplicaConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepRdsCreateCrossRegionReadReplicaConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepRdsCreateCrossRegionReadReplicaConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rdsPromoteReadReplicaConfigs: (() { final guardedValue = map['rdsPromoteReadReplicaConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepRdsPromoteReadReplicaConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepRdsPromoteReadReplicaConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      regionSwitchPlanConfigs: (() { final guardedValue = map['regionSwitchPlanConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepRegionSwitchPlanConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepRegionSwitchPlanConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      route53HealthCheckConfigs: (() { final guardedValue = map['route53HealthCheckConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
