// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../plan_workflow_step_arc_routing_control_config/plan_workflow_step_arc_routing_control_config.dart';
import '../plan_workflow_step_custom_action_lambda_config/plan_workflow_step_custom_action_lambda_config.dart';
import '../plan_workflow_step_document_db_config/plan_workflow_step_document_db_config.dart';
import '../plan_workflow_step_ec2_asg_capacity_increase_config/plan_workflow_step_ec2_asg_capacity_increase_config.dart';
import '../plan_workflow_step_ecs_capacity_increase_config/plan_workflow_step_ecs_capacity_increase_config.dart';
import '../plan_workflow_step_eks_resource_scaling_config/plan_workflow_step_eks_resource_scaling_config.dart';
import '../plan_workflow_step_execution_approval_config/plan_workflow_step_execution_approval_config.dart';
import '../plan_workflow_step_global_aurora_config/plan_workflow_step_global_aurora_config.dart';
import '../plan_workflow_step_parallel_config/plan_workflow_step_parallel_config.dart';
import '../plan_workflow_step_region_switch_plan_config/plan_workflow_step_region_switch_plan_config.dart';
import '../plan_workflow_step_route53_health_check_config/plan_workflow_step_route53_health_check_config.dart';

class PlanWorkflowStep {
  /// Configuration for ARC routing control. See ARC Routing Control Config below.
  final List<PlanWorkflowStepArcRoutingControlConfig>? arcRoutingControlConfigs;

  /// Configuration for Lambda function execution. See Custom Action Lambda Config below.
  final List<PlanWorkflowStepCustomActionLambdaConfig>?
      customActionLambdaConfigs;

  /// Description of the step.
  final String? description;

  /// Configuration for DocumentDB global cluster operations. See DocumentDB Config below.
  final List<PlanWorkflowStepDocumentDbConfig>? documentDbConfigs;

  /// Configuration for EC2 Auto Scaling group capacity increase. See EC2 ASG Capacity Increase Config below.
  final List<PlanWorkflowStepEc2AsgCapacityIncreaseConfig>?
      ec2AsgCapacityIncreaseConfigs;

  /// Configuration for ECS service capacity increase. See ECS Capacity Increase Config below.
  final List<PlanWorkflowStepEcsCapacityIncreaseConfig>?
      ecsCapacityIncreaseConfigs;

  /// Configuration for EKS resource scaling. See EKS Resource Scaling Config below.
  final List<PlanWorkflowStepEksResourceScalingConfig>?
      eksResourceScalingConfigs;

  /// Configuration for manual approval steps. See Execution Approval Config below.
  final List<PlanWorkflowStepExecutionApprovalConfig>? executionApprovalConfigs;

  /// Type of execution block. Valid values: `ARCRegionSwitchPlan`, `ARCRoutingControl`, `AuroraGlobalDatabase`, `CustomActionLambda`, `DocumentDb`, `EC2AutoScaling`, `ECSServiceScaling`, `EKSResourceScaling`, `ManualApproval`, `Parallel`, `Route53HealthCheck`.
  final String executionBlockType;

  /// Configuration for Aurora Global Database operations. See Global Aurora Config below.
  final List<PlanWorkflowStepGlobalAuroraConfig>? globalAuroraConfigs;

  /// Name of the step.
  final String name;

  /// Configuration for parallel execution of multiple steps. See Parallel Config below.
  final List<PlanWorkflowStepParallelConfig>? parallelConfigs;
  final List<PlanWorkflowStepRegionSwitchPlanConfig>? regionSwitchPlanConfigs;

  /// Configuration for Route53 health check operations. See Route53 Health Check Config below.
  final List<PlanWorkflowStepRoute53HealthCheckConfig>?
      route53HealthCheckConfigs;

  PlanWorkflowStep({
    this.arcRoutingControlConfigs,
    this.customActionLambdaConfigs,
    this.description,
    this.documentDbConfigs,
    this.ec2AsgCapacityIncreaseConfigs,
    this.ecsCapacityIncreaseConfigs,
    this.eksResourceScalingConfigs,
    this.executionApprovalConfigs,
    required this.executionBlockType,
    this.globalAuroraConfigs,
    required this.name,
    this.parallelConfigs,
    this.regionSwitchPlanConfigs,
    this.route53HealthCheckConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arcRoutingControlConfigsValue = arcRoutingControlConfigs;
    if (arcRoutingControlConfigsValue != null) {
      map['arcRoutingControlConfigs'] = Input.encodeList<
              PlanWorkflowStepArcRoutingControlConfig, Map<String, dynamic>>(
          arcRoutingControlConfigsValue, (value) => value.toMap());
    }
    final customActionLambdaConfigsValue = customActionLambdaConfigs;
    if (customActionLambdaConfigsValue != null) {
      map['customActionLambdaConfigs'] = Input.encodeList<
              PlanWorkflowStepCustomActionLambdaConfig, Map<String, dynamic>>(
          customActionLambdaConfigsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final documentDbConfigsValue = documentDbConfigs;
    if (documentDbConfigsValue != null) {
      map['documentDbConfigs'] = Input.encodeList<
              PlanWorkflowStepDocumentDbConfig, Map<String, dynamic>>(
          documentDbConfigsValue, (value) => value.toMap());
    }
    final ec2AsgCapacityIncreaseConfigsValue = ec2AsgCapacityIncreaseConfigs;
    if (ec2AsgCapacityIncreaseConfigsValue != null) {
      map['ec2AsgCapacityIncreaseConfigs'] = Input.encodeList<
              PlanWorkflowStepEc2AsgCapacityIncreaseConfig,
              Map<String, dynamic>>(
          ec2AsgCapacityIncreaseConfigsValue, (value) => value.toMap());
    }
    final ecsCapacityIncreaseConfigsValue = ecsCapacityIncreaseConfigs;
    if (ecsCapacityIncreaseConfigsValue != null) {
      map['ecsCapacityIncreaseConfigs'] = Input.encodeList<
              PlanWorkflowStepEcsCapacityIncreaseConfig, Map<String, dynamic>>(
          ecsCapacityIncreaseConfigsValue, (value) => value.toMap());
    }
    final eksResourceScalingConfigsValue = eksResourceScalingConfigs;
    if (eksResourceScalingConfigsValue != null) {
      map['eksResourceScalingConfigs'] = Input.encodeList<
              PlanWorkflowStepEksResourceScalingConfig, Map<String, dynamic>>(
          eksResourceScalingConfigsValue, (value) => value.toMap());
    }
    final executionApprovalConfigsValue = executionApprovalConfigs;
    if (executionApprovalConfigsValue != null) {
      map['executionApprovalConfigs'] = Input.encodeList<
              PlanWorkflowStepExecutionApprovalConfig, Map<String, dynamic>>(
          executionApprovalConfigsValue, (value) => value.toMap());
    }
    map['executionBlockType'] = executionBlockType;
    final globalAuroraConfigsValue = globalAuroraConfigs;
    if (globalAuroraConfigsValue != null) {
      map['globalAuroraConfigs'] = Input.encodeList<
              PlanWorkflowStepGlobalAuroraConfig, Map<String, dynamic>>(
          globalAuroraConfigsValue, (value) => value.toMap());
    }
    map['name'] = name;
    final parallelConfigsValue = parallelConfigs;
    if (parallelConfigsValue != null) {
      map['parallelConfigs'] = Input.encodeList<PlanWorkflowStepParallelConfig,
          Map<String, dynamic>>(parallelConfigsValue, (value) => value.toMap());
    }
    final regionSwitchPlanConfigsValue = regionSwitchPlanConfigs;
    if (regionSwitchPlanConfigsValue != null) {
      map['regionSwitchPlanConfigs'] = Input.encodeList<
              PlanWorkflowStepRegionSwitchPlanConfig, Map<String, dynamic>>(
          regionSwitchPlanConfigsValue, (value) => value.toMap());
    }
    final route53HealthCheckConfigsValue = route53HealthCheckConfigs;
    if (route53HealthCheckConfigsValue != null) {
      map['route53HealthCheckConfigs'] = Input.encodeList<
              PlanWorkflowStepRoute53HealthCheckConfig, Map<String, dynamic>>(
          route53HealthCheckConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PlanWorkflowStep.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStep(
      arcRoutingControlConfigs: map['arcRoutingControlConfigs'] == null
          ? null
          : Input.decodeList<PlanWorkflowStepArcRoutingControlConfig>(
              map['arcRoutingControlConfigs'],
              (value) => PlanWorkflowStepArcRoutingControlConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      customActionLambdaConfigs: map['customActionLambdaConfigs'] == null
          ? null
          : Input.decodeList<PlanWorkflowStepCustomActionLambdaConfig>(
              map['customActionLambdaConfigs'],
              (value) => PlanWorkflowStepCustomActionLambdaConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      documentDbConfigs: map['documentDbConfigs'] == null
          ? null
          : Input.decodeList<PlanWorkflowStepDocumentDbConfig>(
              map['documentDbConfigs'],
              (value) => PlanWorkflowStepDocumentDbConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ec2AsgCapacityIncreaseConfigs: map['ec2AsgCapacityIncreaseConfigs'] ==
              null
          ? null
          : Input.decodeList<PlanWorkflowStepEc2AsgCapacityIncreaseConfig>(
              map['ec2AsgCapacityIncreaseConfigs'],
              (value) => PlanWorkflowStepEc2AsgCapacityIncreaseConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ecsCapacityIncreaseConfigs: map['ecsCapacityIncreaseConfigs'] == null
          ? null
          : Input.decodeList<PlanWorkflowStepEcsCapacityIncreaseConfig>(
              map['ecsCapacityIncreaseConfigs'],
              (value) => PlanWorkflowStepEcsCapacityIncreaseConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      eksResourceScalingConfigs: map['eksResourceScalingConfigs'] == null
          ? null
          : Input.decodeList<PlanWorkflowStepEksResourceScalingConfig>(
              map['eksResourceScalingConfigs'],
              (value) => PlanWorkflowStepEksResourceScalingConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      executionApprovalConfigs: map['executionApprovalConfigs'] == null
          ? null
          : Input.decodeList<PlanWorkflowStepExecutionApprovalConfig>(
              map['executionApprovalConfigs'],
              (value) => PlanWorkflowStepExecutionApprovalConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      executionBlockType: map['executionBlockType'] as String,
      globalAuroraConfigs: map['globalAuroraConfigs'] == null
          ? null
          : Input.decodeList<PlanWorkflowStepGlobalAuroraConfig>(
              map['globalAuroraConfigs'],
              (value) => PlanWorkflowStepGlobalAuroraConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      parallelConfigs: map['parallelConfigs'] == null
          ? null
          : Input.decodeList<PlanWorkflowStepParallelConfig>(
              map['parallelConfigs'],
              (value) => PlanWorkflowStepParallelConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      regionSwitchPlanConfigs: map['regionSwitchPlanConfigs'] == null
          ? null
          : Input.decodeList<PlanWorkflowStepRegionSwitchPlanConfig>(
              map['regionSwitchPlanConfigs'],
              (value) => PlanWorkflowStepRegionSwitchPlanConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      route53HealthCheckConfigs: map['route53HealthCheckConfigs'] == null
          ? null
          : Input.decodeList<PlanWorkflowStepRoute53HealthCheckConfig>(
              map['route53HealthCheckConfigs'],
              (value) => PlanWorkflowStepRoute53HealthCheckConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
