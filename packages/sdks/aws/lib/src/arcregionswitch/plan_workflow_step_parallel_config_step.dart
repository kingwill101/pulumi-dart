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
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepArcRoutingControlConfig>>? arcRoutingControlConfigs;
  /// Configuration for Lambda function execution. See Custom Action Lambda Config below.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig>>? customActionLambdaConfigs;
  /// Description of the step.
  final pulumi.Input<String>? description;
  /// Configuration for DocumentDB global cluster operations. See DocumentDB Config below.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepDocumentDbConfig>>? documentDbConfigs;
  /// Configuration for EC2 Auto Scaling group capacity increase. See EC2 ASG Capacity Increase Config below.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig>>? ec2AsgCapacityIncreaseConfigs;
  /// Configuration for ECS service capacity increase. See ECS Capacity Increase Config below.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig>>? ecsCapacityIncreaseConfigs;
  /// Configuration for EKS resource scaling. See EKS Resource Scaling Config below.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepEksResourceScalingConfig>>? eksResourceScalingConfigs;
  /// Configuration for manual approval steps. See Execution Approval Config below.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepExecutionApprovalConfig>>? executionApprovalConfigs;
  /// Type of execution block. Valid values: `ARCRegionSwitchPlan`, `ARCRoutingControl`, `AuroraGlobalDatabase`, `CustomActionLambda`, `DocumentDb`, `EC2AutoScaling`, `ECSServiceScaling`, `EKSResourceScaling`, `ManualApproval`, `Parallel`, `Route53HealthCheck`.
  final pulumi.Input<String> executionBlockType;
  /// Configuration for Aurora Global Database operations. See Global Aurora Config below.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepGlobalAuroraConfig>>? globalAuroraConfigs;
  /// Name of the step.
  final pulumi.Input<String> name;
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepRegionSwitchPlanConfig>>? regionSwitchPlanConfigs;
  /// Configuration for Route53 health check operations. See Route53 Health Check Config below.
  final pulumi.Input<List<PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig>>? route53HealthCheckConfigs;

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
  const PlanWorkflowStepParallelConfigStep({
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
    return <String, dynamic>{
      'arcRoutingControlConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepArcRoutingControlConfig>, List<Map<String, dynamic>>>(arcRoutingControlConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepArcRoutingControlConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customActionLambdaConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig>, List<Map<String, dynamic>>>(customActionLambdaConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'documentDbConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepDocumentDbConfig>, List<Map<String, dynamic>>>(documentDbConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepDocumentDbConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ec2AsgCapacityIncreaseConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig>, List<Map<String, dynamic>>>(ec2AsgCapacityIncreaseConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ecsCapacityIncreaseConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig>, List<Map<String, dynamic>>>(ecsCapacityIncreaseConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'eksResourceScalingConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepEksResourceScalingConfig>, List<Map<String, dynamic>>>(eksResourceScalingConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepEksResourceScalingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'executionApprovalConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepExecutionApprovalConfig>, List<Map<String, dynamic>>>(executionApprovalConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepExecutionApprovalConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'executionBlockType': executionBlockType,
      'globalAuroraConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepGlobalAuroraConfig>, List<Map<String, dynamic>>>(globalAuroraConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepGlobalAuroraConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'regionSwitchPlanConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepRegionSwitchPlanConfig>, List<Map<String, dynamic>>>(regionSwitchPlanConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepRegionSwitchPlanConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'route53HealthCheckConfigs': ?pulumi.Input.mapOptionalInputValue<List<PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig>, List<Map<String, dynamic>>>(route53HealthCheckConfigs, (value) => pulumi.Input.encodeList<PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlanWorkflowStepParallelConfigStep.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStep(
      arcRoutingControlConfigs: (() { final guardedValue = map['arcRoutingControlConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepArcRoutingControlConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepArcRoutingControlConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customActionLambdaConfigs: (() { final guardedValue = map['customActionLambdaConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepCustomActionLambdaConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      documentDbConfigs: (() { final guardedValue = map['documentDbConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepDocumentDbConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepDocumentDbConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ec2AsgCapacityIncreaseConfigs: (() { final guardedValue = map['ec2AsgCapacityIncreaseConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ecsCapacityIncreaseConfigs: (() { final guardedValue = map['ecsCapacityIncreaseConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      eksResourceScalingConfigs: (() { final guardedValue = map['eksResourceScalingConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepEksResourceScalingConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepEksResourceScalingConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      executionApprovalConfigs: (() { final guardedValue = map['executionApprovalConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepExecutionApprovalConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepExecutionApprovalConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      executionBlockType: pulumi.Input.fromValue(map['executionBlockType'] as String),
      globalAuroraConfigs: (() { final guardedValue = map['globalAuroraConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepGlobalAuroraConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepGlobalAuroraConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      regionSwitchPlanConfigs: (() { final guardedValue = map['regionSwitchPlanConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepRegionSwitchPlanConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepRegionSwitchPlanConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      route53HealthCheckConfigs: (() { final guardedValue = map['route53HealthCheckConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig>(guardedValue, (value) => PlanWorkflowStepParallelConfigStepRoute53HealthCheckConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

