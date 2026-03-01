// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_workflow_step_arc_routing_control_config.dart';
import 'plan_workflow_step_custom_action_lambda_config.dart';
import 'plan_workflow_step_document_db_config.dart';
import 'plan_workflow_step_ec2_asg_capacity_increase_config.dart';
import 'plan_workflow_step_ecs_capacity_increase_config.dart';
import 'plan_workflow_step_eks_resource_scaling_config.dart';
import 'plan_workflow_step_execution_approval_config.dart';
import 'plan_workflow_step_global_aurora_config.dart';
import 'plan_workflow_step_parallel_config.dart';
import 'plan_workflow_step_region_switch_plan_config.dart';
import 'plan_workflow_step_route53_health_check_config.dart';

class PlanWorkflowStep {
  /// Configuration for ARC routing control. See ARC Routing Control Config below.
  final List<PlanWorkflowStepArcRoutingControlConfig>? arcRoutingControlConfigs;
  /// Configuration for Lambda function execution. See Custom Action Lambda Config below.
  final List<PlanWorkflowStepCustomActionLambdaConfig>? customActionLambdaConfigs;
  /// Description of the step.
  final String? description;
  /// Configuration for DocumentDB global cluster operations. See DocumentDB Config below.
  final List<PlanWorkflowStepDocumentDbConfig>? documentDbConfigs;
  /// Configuration for EC2 Auto Scaling group capacity increase. See EC2 ASG Capacity Increase Config below.
  final List<PlanWorkflowStepEc2AsgCapacityIncreaseConfig>? ec2AsgCapacityIncreaseConfigs;
  /// Configuration for ECS service capacity increase. See ECS Capacity Increase Config below.
  final List<PlanWorkflowStepEcsCapacityIncreaseConfig>? ecsCapacityIncreaseConfigs;
  /// Configuration for EKS resource scaling. See EKS Resource Scaling Config below.
  final List<PlanWorkflowStepEksResourceScalingConfig>? eksResourceScalingConfigs;
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
  final List<PlanWorkflowStepRoute53HealthCheckConfig>? route53HealthCheckConfigs;

  /// Creates a new [PlanWorkflowStep].
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
  /// [parallelConfigs] Configuration for parallel execution of multiple steps. See Parallel Config below.
  /// [regionSwitchPlanConfigs] Optional.
  /// [route53HealthCheckConfigs] Configuration for Route53 health check operations. See Route53 Health Check Config below.
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
    return <String, dynamic>{
      'arcRoutingControlConfigs': ?arcRoutingControlConfigs == null ? null : pulumi.Input.encodeList<PlanWorkflowStepArcRoutingControlConfig, Map<String, dynamic>>(arcRoutingControlConfigs!, (value) => value.toMap()),
      'customActionLambdaConfigs': ?customActionLambdaConfigs == null ? null : pulumi.Input.encodeList<PlanWorkflowStepCustomActionLambdaConfig, Map<String, dynamic>>(customActionLambdaConfigs!, (value) => value.toMap()),
      'description': ?description,
      'documentDbConfigs': ?documentDbConfigs == null ? null : pulumi.Input.encodeList<PlanWorkflowStepDocumentDbConfig, Map<String, dynamic>>(documentDbConfigs!, (value) => value.toMap()),
      'ec2AsgCapacityIncreaseConfigs': ?ec2AsgCapacityIncreaseConfigs == null ? null : pulumi.Input.encodeList<PlanWorkflowStepEc2AsgCapacityIncreaseConfig, Map<String, dynamic>>(ec2AsgCapacityIncreaseConfigs!, (value) => value.toMap()),
      'ecsCapacityIncreaseConfigs': ?ecsCapacityIncreaseConfigs == null ? null : pulumi.Input.encodeList<PlanWorkflowStepEcsCapacityIncreaseConfig, Map<String, dynamic>>(ecsCapacityIncreaseConfigs!, (value) => value.toMap()),
      'eksResourceScalingConfigs': ?eksResourceScalingConfigs == null ? null : pulumi.Input.encodeList<PlanWorkflowStepEksResourceScalingConfig, Map<String, dynamic>>(eksResourceScalingConfigs!, (value) => value.toMap()),
      'executionApprovalConfigs': ?executionApprovalConfigs == null ? null : pulumi.Input.encodeList<PlanWorkflowStepExecutionApprovalConfig, Map<String, dynamic>>(executionApprovalConfigs!, (value) => value.toMap()),
      'executionBlockType': executionBlockType,
      'globalAuroraConfigs': ?globalAuroraConfigs == null ? null : pulumi.Input.encodeList<PlanWorkflowStepGlobalAuroraConfig, Map<String, dynamic>>(globalAuroraConfigs!, (value) => value.toMap()),
      'name': name,
      'parallelConfigs': ?parallelConfigs == null ? null : pulumi.Input.encodeList<PlanWorkflowStepParallelConfig, Map<String, dynamic>>(parallelConfigs!, (value) => value.toMap()),
      'regionSwitchPlanConfigs': ?regionSwitchPlanConfigs == null ? null : pulumi.Input.encodeList<PlanWorkflowStepRegionSwitchPlanConfig, Map<String, dynamic>>(regionSwitchPlanConfigs!, (value) => value.toMap()),
      'route53HealthCheckConfigs': ?route53HealthCheckConfigs == null ? null : pulumi.Input.encodeList<PlanWorkflowStepRoute53HealthCheckConfig, Map<String, dynamic>>(route53HealthCheckConfigs!, (value) => value.toMap()),
    };
  }

  factory PlanWorkflowStep.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStep(
      arcRoutingControlConfigs: map['arcRoutingControlConfigs'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStepArcRoutingControlConfig>(map['arcRoutingControlConfigs'], (value) => PlanWorkflowStepArcRoutingControlConfig.fromMap((value as Map).cast<String, dynamic>())),
      customActionLambdaConfigs: map['customActionLambdaConfigs'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStepCustomActionLambdaConfig>(map['customActionLambdaConfigs'], (value) => PlanWorkflowStepCustomActionLambdaConfig.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      documentDbConfigs: map['documentDbConfigs'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStepDocumentDbConfig>(map['documentDbConfigs'], (value) => PlanWorkflowStepDocumentDbConfig.fromMap((value as Map).cast<String, dynamic>())),
      ec2AsgCapacityIncreaseConfigs: map['ec2AsgCapacityIncreaseConfigs'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStepEc2AsgCapacityIncreaseConfig>(map['ec2AsgCapacityIncreaseConfigs'], (value) => PlanWorkflowStepEc2AsgCapacityIncreaseConfig.fromMap((value as Map).cast<String, dynamic>())),
      ecsCapacityIncreaseConfigs: map['ecsCapacityIncreaseConfigs'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStepEcsCapacityIncreaseConfig>(map['ecsCapacityIncreaseConfigs'], (value) => PlanWorkflowStepEcsCapacityIncreaseConfig.fromMap((value as Map).cast<String, dynamic>())),
      eksResourceScalingConfigs: map['eksResourceScalingConfigs'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStepEksResourceScalingConfig>(map['eksResourceScalingConfigs'], (value) => PlanWorkflowStepEksResourceScalingConfig.fromMap((value as Map).cast<String, dynamic>())),
      executionApprovalConfigs: map['executionApprovalConfigs'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStepExecutionApprovalConfig>(map['executionApprovalConfigs'], (value) => PlanWorkflowStepExecutionApprovalConfig.fromMap((value as Map).cast<String, dynamic>())),
      executionBlockType: map['executionBlockType'] as String,
      globalAuroraConfigs: map['globalAuroraConfigs'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStepGlobalAuroraConfig>(map['globalAuroraConfigs'], (value) => PlanWorkflowStepGlobalAuroraConfig.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      parallelConfigs: map['parallelConfigs'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStepParallelConfig>(map['parallelConfigs'], (value) => PlanWorkflowStepParallelConfig.fromMap((value as Map).cast<String, dynamic>())),
      regionSwitchPlanConfigs: map['regionSwitchPlanConfigs'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStepRegionSwitchPlanConfig>(map['regionSwitchPlanConfigs'], (value) => PlanWorkflowStepRegionSwitchPlanConfig.fromMap((value as Map).cast<String, dynamic>())),
      route53HealthCheckConfigs: map['route53HealthCheckConfigs'] == null ? null : pulumi.Input.decodeList<PlanWorkflowStepRoute53HealthCheckConfig>(map['route53HealthCheckConfigs'], (value) => PlanWorkflowStepRoute53HealthCheckConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

