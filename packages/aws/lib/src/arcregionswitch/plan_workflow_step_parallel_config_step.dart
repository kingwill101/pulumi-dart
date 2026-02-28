// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_parallel_config_step_arc_routing_control_config.dart';
import 'plan_workflow_step_parallel_config_step_custom_action_lambda_config.dart';
import 'plan_workflow_step_parallel_config_step_document_db_config.dart';
import 'plan_workflow_step_parallel_config_step_ec2_asg_capacity_increase_config.dart';
import 'plan_workflow_step_parallel_config_step_ecs_capacity_increase_config.dart';
import 'plan_workflow_step_parallel_config_step_eks_resource_scaling_config.dart';
import 'plan_workflow_step_parallel_config_step_execution_approval_config.dart';
import 'plan_workflow_step_parallel_config_step_global_aurora_config.dart';
import 'plan_workflow_step_parallel_config_step_region_switch_plan_config.dart';
import 'plan_workflow_step_parallel_config_step_route53_health_check_config.dart';

class PlanWorkflowStepParallelConfigStep {
  /// Configuration for ARC routing control. See ARC Routing Control Config below.
  final List<PlanWorkflowStepParallelConfigStepArcRoutingControlConfig>?
      arcRoutingControlConfigs;

  /// Configuration for Lambda function execution. See Custom Action Lambda Config below.
  final List<PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig>?
      customActionLambdaConfigs;

  /// Description of the step.
  final String? description;

  /// Configuration for DocumentDB global cluster operations. See DocumentDB Config below.
  final List<PlanWorkflowStepParallelConfigStepDocumentDbConfig>?
      documentDbConfigs;

  /// Configuration for EC2 Auto Scaling group capacity increase. See EC2 ASG Capacity Increase Config below.
  final List<PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig>?
      ec2AsgCapacityIncreaseConfigs;

  /// Configuration for ECS service capacity increase. See ECS Capacity Increase Config below.
  final List<PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig>?
      ecsCapacityIncreaseConfigs;

  /// Configuration for EKS resource scaling. See EKS Resource Scaling Config below.
  final List<PlanWorkflowStepParallelConfigStepEksResourceScalingConfig>?
      eksResourceScalingConfigs;

  /// Configuration for manual approval steps. See Execution Approval Config below.
  final List<PlanWorkflowStepParallelConfigStepExecutionApprovalConfig>?
      executionApprovalConfigs;

  /// Type of execution block. Valid values: `ARCRegionSwitchPlan`, `ARCRoutingControl`, `AuroraGlobalDatabase`, `CustomActionLambda`, `DocumentDb`, `EC2AutoScaling`, `ECSServiceScaling`, `EKSResourceScaling`, `ManualApproval`, `Parallel`, `Route53HealthCheck`.
  final String executionBlockType;

  /// Configuration for Aurora Global Database operations. See Global Aurora Config below.
  final List<PlanWorkflowStepParallelConfigStepGlobalAuroraConfig>?
      globalAuroraConfigs;

  /// Name of the step.
  final String name;
  final List<PlanWorkflowStepParallelConfigStepRegionSwitchPlanConfig>?
      regionSwitchPlanConfigs;

  /// Configuration for Route53 health check operations. See Route53 Health Check Config below.
  final List<PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig>?
      route53HealthCheckConfigs;

  /// Creates a new [PlanWorkflowStepParallelConfigStep].
  /// [arcRoutingControlConfigs] Configuration for ARC routing control. See ARC Routing Control Config below.
  /// [customActionLambdaConfigs] Configuration for Lambda function execution. See Custom Action Lambda Config below.
  /// [description] Description of the step.
  /// [documentDbConfigs] Configuration for DocumentDB global cluster operations. See DocumentDB Config below.
  /// [ec2AsgCapacityIncreaseConfigs] Configuration for EC2 Auto Scaling group capacity increase. See EC2 ASG Capacity Increase Config below.
  /// [ecsCapacityIncreaseConfigs] Configuration for ECS service capacity increase. See ECS Capacity Increase Config below.
  /// [eksResourceScalingConfigs] Configuration for EKS resource scaling. See EKS Resource Scaling Config below.
  /// [executionApprovalConfigs] Configuration for manual approval steps. See Execution Approval Config below.
  /// [executionBlockType] Type of execution block. Valid values: `ARCRegionSwitchPlan`, `ARCRoutingControl`, `AuroraGlobalDatabase`, `CustomActionLambda`, `DocumentDb`, `EC2AutoScaling`, `ECSServiceScaling`, `EKSResourceScaling`, `ManualApproval`, `Parallel`, `Route53HealthCheck`.
  /// [globalAuroraConfigs] Configuration for Aurora Global Database operations. See Global Aurora Config below.
  /// [name] Name of the step.
  /// [regionSwitchPlanConfigs] Optional.
  /// [route53HealthCheckConfigs] Configuration for Route53 health check operations. See Route53 Health Check Config below.
  PlanWorkflowStepParallelConfigStep({
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
    this.regionSwitchPlanConfigs,
    this.route53HealthCheckConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arcRoutingControlConfigsValue = arcRoutingControlConfigs;
    if (arcRoutingControlConfigsValue != null) {
      map['arcRoutingControlConfigs'] = pulumi.Input.encodeList<
              PlanWorkflowStepParallelConfigStepArcRoutingControlConfig,
              Map<String, dynamic>>(
          arcRoutingControlConfigsValue, (value) => value.toMap());
    }
    final customActionLambdaConfigsValue = customActionLambdaConfigs;
    if (customActionLambdaConfigsValue != null) {
      map['customActionLambdaConfigs'] = pulumi.Input.encodeList<
              PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig,
              Map<String, dynamic>>(
          customActionLambdaConfigsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final documentDbConfigsValue = documentDbConfigs;
    if (documentDbConfigsValue != null) {
      map['documentDbConfigs'] = pulumi.Input.encodeList<
              PlanWorkflowStepParallelConfigStepDocumentDbConfig,
              Map<String, dynamic>>(
          documentDbConfigsValue, (value) => value.toMap());
    }
    final ec2AsgCapacityIncreaseConfigsValue = ec2AsgCapacityIncreaseConfigs;
    if (ec2AsgCapacityIncreaseConfigsValue != null) {
      map['ec2AsgCapacityIncreaseConfigs'] = pulumi.Input.encodeList<
              PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig,
              Map<String, dynamic>>(
          ec2AsgCapacityIncreaseConfigsValue, (value) => value.toMap());
    }
    final ecsCapacityIncreaseConfigsValue = ecsCapacityIncreaseConfigs;
    if (ecsCapacityIncreaseConfigsValue != null) {
      map['ecsCapacityIncreaseConfigs'] = pulumi.Input.encodeList<
              PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig,
              Map<String, dynamic>>(
          ecsCapacityIncreaseConfigsValue, (value) => value.toMap());
    }
    final eksResourceScalingConfigsValue = eksResourceScalingConfigs;
    if (eksResourceScalingConfigsValue != null) {
      map['eksResourceScalingConfigs'] = pulumi.Input.encodeList<
              PlanWorkflowStepParallelConfigStepEksResourceScalingConfig,
              Map<String, dynamic>>(
          eksResourceScalingConfigsValue, (value) => value.toMap());
    }
    final executionApprovalConfigsValue = executionApprovalConfigs;
    if (executionApprovalConfigsValue != null) {
      map['executionApprovalConfigs'] = pulumi.Input.encodeList<
              PlanWorkflowStepParallelConfigStepExecutionApprovalConfig,
              Map<String, dynamic>>(
          executionApprovalConfigsValue, (value) => value.toMap());
    }
    map['executionBlockType'] = executionBlockType;
    final globalAuroraConfigsValue = globalAuroraConfigs;
    if (globalAuroraConfigsValue != null) {
      map['globalAuroraConfigs'] = pulumi.Input.encodeList<
              PlanWorkflowStepParallelConfigStepGlobalAuroraConfig,
              Map<String, dynamic>>(
          globalAuroraConfigsValue, (value) => value.toMap());
    }
    map['name'] = name;
    final regionSwitchPlanConfigsValue = regionSwitchPlanConfigs;
    if (regionSwitchPlanConfigsValue != null) {
      map['regionSwitchPlanConfigs'] = pulumi.Input.encodeList<
              PlanWorkflowStepParallelConfigStepRegionSwitchPlanConfig,
              Map<String, dynamic>>(
          regionSwitchPlanConfigsValue, (value) => value.toMap());
    }
    final route53HealthCheckConfigsValue = route53HealthCheckConfigs;
    if (route53HealthCheckConfigsValue != null) {
      map['route53HealthCheckConfigs'] = pulumi.Input.encodeList<
              PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig,
              Map<String, dynamic>>(
          route53HealthCheckConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PlanWorkflowStepParallelConfigStep.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStep(
      arcRoutingControlConfigs: map['arcRoutingControlConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepParallelConfigStepArcRoutingControlConfig>(
              map['arcRoutingControlConfigs'],
              (value) =>
                  PlanWorkflowStepParallelConfigStepArcRoutingControlConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      customActionLambdaConfigs: map['customActionLambdaConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig>(
              map['customActionLambdaConfigs'],
              (value) =>
                  PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      description:
          map['description'] == null ? null : map['description'] as String,
      documentDbConfigs: map['documentDbConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepParallelConfigStepDocumentDbConfig>(
              map['documentDbConfigs'],
              (value) =>
                  PlanWorkflowStepParallelConfigStepDocumentDbConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      ec2AsgCapacityIncreaseConfigs: map['ec2AsgCapacityIncreaseConfigs'] ==
              null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig>(
              map['ec2AsgCapacityIncreaseConfigs'],
              (value) =>
                  PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      ecsCapacityIncreaseConfigs: map['ecsCapacityIncreaseConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig>(
              map['ecsCapacityIncreaseConfigs'],
              (value) =>
                  PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      eksResourceScalingConfigs: map['eksResourceScalingConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepParallelConfigStepEksResourceScalingConfig>(
              map['eksResourceScalingConfigs'],
              (value) =>
                  PlanWorkflowStepParallelConfigStepEksResourceScalingConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      executionApprovalConfigs: map['executionApprovalConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepParallelConfigStepExecutionApprovalConfig>(
              map['executionApprovalConfigs'],
              (value) =>
                  PlanWorkflowStepParallelConfigStepExecutionApprovalConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      executionBlockType: map['executionBlockType'] as String,
      globalAuroraConfigs: map['globalAuroraConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepParallelConfigStepGlobalAuroraConfig>(
              map['globalAuroraConfigs'],
              (value) =>
                  PlanWorkflowStepParallelConfigStepGlobalAuroraConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      regionSwitchPlanConfigs: map['regionSwitchPlanConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepParallelConfigStepRegionSwitchPlanConfig>(
              map['regionSwitchPlanConfigs'],
              (value) =>
                  PlanWorkflowStepParallelConfigStepRegionSwitchPlanConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      route53HealthCheckConfigs: map['route53HealthCheckConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig>(
              map['route53HealthCheckConfigs'],
              (value) =>
                  PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
