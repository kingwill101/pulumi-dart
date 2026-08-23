// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_arc_routing_control_config.dart';
import 'plan_workflow_step_aurora_provisioned_scaling_config.dart';
import 'plan_workflow_step_aurora_serverless_scaling_config.dart';
import 'plan_workflow_step_custom_action_lambda_config.dart';
import 'plan_workflow_step_document_db_config.dart';
import 'plan_workflow_step_ec2_asg_capacity_increase_config.dart';
import 'plan_workflow_step_ecs_capacity_increase_config.dart';
import 'plan_workflow_step_eks_resource_scaling_config.dart';
import 'plan_workflow_step_execution_approval_config.dart';
import 'plan_workflow_step_global_aurora_config.dart';
import 'plan_workflow_step_lambda_event_source_mapping_config.dart';
import 'plan_workflow_step_neptune_global_database_config.dart';
import 'plan_workflow_step_parallel_config.dart';
import 'plan_workflow_step_rds_create_cross_region_read_replica_config.dart';
import 'plan_workflow_step_rds_promote_read_replica_config.dart';
import 'plan_workflow_step_region_switch_plan_config.dart';
import 'plan_workflow_step_route53_health_check_config.dart';

class PlanWorkflowStep {
  /// Configuration for ARC routing control. See `arcRoutingControlConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepArcRoutingControlConfig>>? arcRoutingControlConfigs;
  /// Configuration for Aurora provisioned scaling. See `auroraProvisionedScalingConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepAuroraProvisionedScalingConfig>>? auroraProvisionedScalingConfigs;
  /// Configuration for Aurora Serverless scaling. See `auroraServerlessScalingConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepAuroraServerlessScalingConfig>>? auroraServerlessScalingConfigs;
  /// Configuration for Lambda function execution. See `customActionLambdaConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepCustomActionLambdaConfig>>? customActionLambdaConfigs;
  /// Description of the step.
  final pulumi.Input<String>? description;
  /// Configuration for DocumentDB global cluster operations. See `documentDbConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepDocumentDbConfig>>? documentDbConfigs;
  /// Configuration for EC2 Auto Scaling group capacity increase. See `ec2AsgCapacityIncreaseConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepEc2AsgCapacityIncreaseConfig>>? ec2AsgCapacityIncreaseConfigs;
  /// Configuration for ECS service capacity increase. See `ecsCapacityIncreaseConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepEcsCapacityIncreaseConfig>>? ecsCapacityIncreaseConfigs;
  /// Configuration for EKS resource scaling. See `eksResourceScalingConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepEksResourceScalingConfig>>? eksResourceScalingConfigs;
  /// Configuration for manual approval steps. See `executionApprovalConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepExecutionApprovalConfig>>? executionApprovalConfigs;
  /// Type of execution block. Valid values: `ARCRegionSwitchPlan`, `ARCRoutingControl`, `AuroraGlobalDatabase`, `CustomActionLambda`, `DocumentDb`, `EC2AutoScaling`, `ECSServiceScaling`, `EKSResourceScaling`, `ManualApproval`, `Parallel`, `RdsCreateCrossRegionReplica`, `RdsPromoteReadReplica`, `Route53HealthCheck`.
  final pulumi.Input<String> executionBlockType;
  /// Configuration for Aurora Global Database operations. See `globalAuroraConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepGlobalAuroraConfig>>? globalAuroraConfigs;
  /// Configuration for Lambda event source mapping operations. See `lambdaEventSourceMappingConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepLambdaEventSourceMappingConfig>>? lambdaEventSourceMappingConfigs;
  /// Name of the step.
  final pulumi.Input<String> name;
  /// Configuration for Neptune global database operations. See `neptuneGlobalDatabaseConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepNeptuneGlobalDatabaseConfig>>? neptuneGlobalDatabaseConfigs;
  /// Configuration for parallel execution of multiple steps. See `parallelConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepParallelConfig>>? parallelConfigs;
  /// Configuration for creating cross-region RDS read replicas. See `rdsCreateCrossRegionReadReplicaConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepRdsCreateCrossRegionReadReplicaConfig>>? rdsCreateCrossRegionReadReplicaConfigs;
  /// Configuration for promoting RDS read replicas. See `rdsPromoteReadReplicaConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepRdsPromoteReadReplicaConfig>>? rdsPromoteReadReplicaConfigs;
  /// Configuration for executing a nested region switch plan. See `regionSwitchPlanConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepRegionSwitchPlanConfig>>? regionSwitchPlanConfigs;
  /// Configuration for Route53 health check operations. See `route53HealthCheckConfig` Block for details.
  final pulumi.Input<List<PlanWorkflowStepRoute53HealthCheckConfig>>? route53HealthCheckConfigs;

  /// Creates a new [PlanWorkflowStep].
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
  /// [parallelConfigs] Configuration for parallel execution of multiple steps. See `parallelConfig` Block for details.
  /// [rdsCreateCrossRegionReadReplicaConfigs] Configuration for creating cross-region RDS read replicas. See `rdsCreateCrossRegionReadReplicaConfig` Block for details.
  /// [rdsPromoteReadReplicaConfigs] Configuration for promoting RDS read replicas. See `rdsPromoteReadReplicaConfig` Block for details.
  /// [regionSwitchPlanConfigs] Configuration for executing a nested region switch plan. See `regionSwitchPlanConfig` Block for details.
  /// [route53HealthCheckConfigs] Configuration for Route53 health check operations. See `route53HealthCheckConfig` Block for details.
  const PlanWorkflowStep({
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
    this.parallelConfigs,
    this.rdsCreateCrossRegionReadReplicaConfigs,
    this.rdsPromoteReadReplicaConfigs,
    this.regionSwitchPlanConfigs,
    this.route53HealthCheckConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcRoutingControlConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepArcRoutingControlConfig>, List<Map<String, dynamic>>>(arcRoutingControlConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepArcRoutingControlConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'auroraProvisionedScalingConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepAuroraProvisionedScalingConfig>, List<Map<String, dynamic>>>(auroraProvisionedScalingConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepAuroraProvisionedScalingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'auroraServerlessScalingConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepAuroraServerlessScalingConfig>, List<Map<String, dynamic>>>(auroraServerlessScalingConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepAuroraServerlessScalingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customActionLambdaConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepCustomActionLambdaConfig>, List<Map<String, dynamic>>>(customActionLambdaConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepCustomActionLambdaConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'documentDbConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepDocumentDbConfig>, List<Map<String, dynamic>>>(documentDbConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepDocumentDbConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ec2AsgCapacityIncreaseConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepEc2AsgCapacityIncreaseConfig>, List<Map<String, dynamic>>>(ec2AsgCapacityIncreaseConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepEc2AsgCapacityIncreaseConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ecsCapacityIncreaseConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepEcsCapacityIncreaseConfig>, List<Map<String, dynamic>>>(ecsCapacityIncreaseConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepEcsCapacityIncreaseConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eksResourceScalingConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepEksResourceScalingConfig>, List<Map<String, dynamic>>>(eksResourceScalingConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepEksResourceScalingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'executionApprovalConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepExecutionApprovalConfig>, List<Map<String, dynamic>>>(executionApprovalConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepExecutionApprovalConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'executionBlockType': executionBlockType,
      'globalAuroraConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepGlobalAuroraConfig>, List<Map<String, dynamic>>>(globalAuroraConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepGlobalAuroraConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lambdaEventSourceMappingConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepLambdaEventSourceMappingConfig>, List<Map<String, dynamic>>>(lambdaEventSourceMappingConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepLambdaEventSourceMappingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'neptuneGlobalDatabaseConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepNeptuneGlobalDatabaseConfig>, List<Map<String, dynamic>>>(neptuneGlobalDatabaseConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepNeptuneGlobalDatabaseConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parallelConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfig>, List<Map<String, dynamic>>>(parallelConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rdsCreateCrossRegionReadReplicaConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepRdsCreateCrossRegionReadReplicaConfig>, List<Map<String, dynamic>>>(rdsCreateCrossRegionReadReplicaConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepRdsCreateCrossRegionReadReplicaConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rdsPromoteReadReplicaConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepRdsPromoteReadReplicaConfig>, List<Map<String, dynamic>>>(rdsPromoteReadReplicaConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepRdsPromoteReadReplicaConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regionSwitchPlanConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepRegionSwitchPlanConfig>, List<Map<String, dynamic>>>(regionSwitchPlanConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepRegionSwitchPlanConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'route53HealthCheckConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepRoute53HealthCheckConfig>, List<Map<String, dynamic>>>(route53HealthCheckConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepRoute53HealthCheckConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanWorkflowStep.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStep(
      arcRoutingControlConfigs: (() { final guardedValue = map['arcRoutingControlConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepArcRoutingControlConfig>(guardedValue, (value) => PlanWorkflowStepArcRoutingControlConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      auroraProvisionedScalingConfigs: (() { final guardedValue = map['auroraProvisionedScalingConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepAuroraProvisionedScalingConfig>(guardedValue, (value) => PlanWorkflowStepAuroraProvisionedScalingConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      auroraServerlessScalingConfigs: (() { final guardedValue = map['auroraServerlessScalingConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepAuroraServerlessScalingConfig>(guardedValue, (value) => PlanWorkflowStepAuroraServerlessScalingConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customActionLambdaConfigs: (() { final guardedValue = map['customActionLambdaConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepCustomActionLambdaConfig>(guardedValue, (value) => PlanWorkflowStepCustomActionLambdaConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentDbConfigs: (() { final guardedValue = map['documentDbConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepDocumentDbConfig>(guardedValue, (value) => PlanWorkflowStepDocumentDbConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ec2AsgCapacityIncreaseConfigs: (() { final guardedValue = map['ec2AsgCapacityIncreaseConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepEc2AsgCapacityIncreaseConfig>(guardedValue, (value) => PlanWorkflowStepEc2AsgCapacityIncreaseConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ecsCapacityIncreaseConfigs: (() { final guardedValue = map['ecsCapacityIncreaseConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepEcsCapacityIncreaseConfig>(guardedValue, (value) => PlanWorkflowStepEcsCapacityIncreaseConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      eksResourceScalingConfigs: (() { final guardedValue = map['eksResourceScalingConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepEksResourceScalingConfig>(guardedValue, (value) => PlanWorkflowStepEksResourceScalingConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      executionApprovalConfigs: (() { final guardedValue = map['executionApprovalConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepExecutionApprovalConfig>(guardedValue, (value) => PlanWorkflowStepExecutionApprovalConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      executionBlockType: pulumi.Input.fromValue(map['executionBlockType'] as String),
      globalAuroraConfigs: (() { final guardedValue = map['globalAuroraConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepGlobalAuroraConfig>(guardedValue, (value) => PlanWorkflowStepGlobalAuroraConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lambdaEventSourceMappingConfigs: (() { final guardedValue = map['lambdaEventSourceMappingConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepLambdaEventSourceMappingConfig>(guardedValue, (value) => PlanWorkflowStepLambdaEventSourceMappingConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      neptuneGlobalDatabaseConfigs: (() { final guardedValue = map['neptuneGlobalDatabaseConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepNeptuneGlobalDatabaseConfig>(guardedValue, (value) => PlanWorkflowStepNeptuneGlobalDatabaseConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parallelConfigs: (() { final guardedValue = map['parallelConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rdsCreateCrossRegionReadReplicaConfigs: (() { final guardedValue = map['rdsCreateCrossRegionReadReplicaConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepRdsCreateCrossRegionReadReplicaConfig>(guardedValue, (value) => PlanWorkflowStepRdsCreateCrossRegionReadReplicaConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rdsPromoteReadReplicaConfigs: (() { final guardedValue = map['rdsPromoteReadReplicaConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepRdsPromoteReadReplicaConfig>(guardedValue, (value) => PlanWorkflowStepRdsPromoteReadReplicaConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      regionSwitchPlanConfigs: (() { final guardedValue = map['regionSwitchPlanConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepRegionSwitchPlanConfig>(guardedValue, (value) => PlanWorkflowStepRegionSwitchPlanConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      route53HealthCheckConfigs: (() { final guardedValue = map['route53HealthCheckConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepRoute53HealthCheckConfig>(guardedValue, (value) => PlanWorkflowStepRoute53HealthCheckConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
