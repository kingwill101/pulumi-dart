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
  final pulumi.Input<List<PlanWorkflowStepArcRoutingControlConfig>>?
  arcRoutingControlConfigs;

  /// Configuration for Lambda function execution. See Custom Action Lambda Config below.
  final pulumi.Input<List<PlanWorkflowStepCustomActionLambdaConfig>>?
  customActionLambdaConfigs;

  /// Description of the step.
  final pulumi.Input<String>? description;

  /// Configuration for DocumentDB global cluster operations. See DocumentDB Config below.
  final pulumi.Input<List<PlanWorkflowStepDocumentDbConfig>>? documentDbConfigs;

  /// Configuration for EC2 Auto Scaling group capacity increase. See EC2 ASG Capacity Increase Config below.
  final pulumi.Input<List<PlanWorkflowStepEc2AsgCapacityIncreaseConfig>>?
  ec2AsgCapacityIncreaseConfigs;

  /// Configuration for ECS service capacity increase. See ECS Capacity Increase Config below.
  final pulumi.Input<List<PlanWorkflowStepEcsCapacityIncreaseConfig>>?
  ecsCapacityIncreaseConfigs;

  /// Configuration for EKS resource scaling. See EKS Resource Scaling Config below.
  final pulumi.Input<List<PlanWorkflowStepEksResourceScalingConfig>>?
  eksResourceScalingConfigs;

  /// Configuration for manual approval steps. See Execution Approval Config below.
  final pulumi.Input<List<PlanWorkflowStepExecutionApprovalConfig>>?
  executionApprovalConfigs;

  /// Type of execution block. Valid values: `ARCRegionSwitchPlan`, `ARCRoutingControl`, `AuroraGlobalDatabase`, `CustomActionLambda`, `DocumentDb`, `EC2AutoScaling`, `ECSServiceScaling`, `EKSResourceScaling`, `ManualApproval`, `Parallel`, `Route53HealthCheck`.
  final pulumi.Input<String> executionBlockType;

  /// Configuration for Aurora Global Database operations. See Global Aurora Config below.
  final pulumi.Input<List<PlanWorkflowStepGlobalAuroraConfig>>?
  globalAuroraConfigs;

  /// Name of the step.
  final pulumi.Input<String> name;

  /// Configuration for parallel execution of multiple steps. See Parallel Config below.
  final pulumi.Input<List<PlanWorkflowStepParallelConfig>>? parallelConfigs;
  final pulumi.Input<List<PlanWorkflowStepRegionSwitchPlanConfig>>?
  regionSwitchPlanConfigs;

  /// Configuration for Route53 health check operations. See Route53 Health Check Config below.
  final pulumi.Input<List<PlanWorkflowStepRoute53HealthCheckConfig>>?
  route53HealthCheckConfigs;

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
      'arcRoutingControlConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlanWorkflowStepArcRoutingControlConfig>,
            List<Map<String, dynamic>>
          >(
            arcRoutingControlConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  PlanWorkflowStepArcRoutingControlConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'customActionLambdaConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlanWorkflowStepCustomActionLambdaConfig>,
            List<Map<String, dynamic>>
          >(
            customActionLambdaConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  PlanWorkflowStepCustomActionLambdaConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'documentDbConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlanWorkflowStepDocumentDbConfig>,
            List<Map<String, dynamic>>
          >(
            documentDbConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  PlanWorkflowStepDocumentDbConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ec2AsgCapacityIncreaseConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlanWorkflowStepEc2AsgCapacityIncreaseConfig>,
            List<Map<String, dynamic>>
          >(
            ec2AsgCapacityIncreaseConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  PlanWorkflowStepEc2AsgCapacityIncreaseConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'ecsCapacityIncreaseConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlanWorkflowStepEcsCapacityIncreaseConfig>,
            List<Map<String, dynamic>>
          >(
            ecsCapacityIncreaseConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  PlanWorkflowStepEcsCapacityIncreaseConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'eksResourceScalingConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlanWorkflowStepEksResourceScalingConfig>,
            List<Map<String, dynamic>>
          >(
            eksResourceScalingConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  PlanWorkflowStepEksResourceScalingConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'executionApprovalConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlanWorkflowStepExecutionApprovalConfig>,
            List<Map<String, dynamic>>
          >(
            executionApprovalConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  PlanWorkflowStepExecutionApprovalConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'executionBlockType': executionBlockType,
      'globalAuroraConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlanWorkflowStepGlobalAuroraConfig>,
            List<Map<String, dynamic>>
          >(
            globalAuroraConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  PlanWorkflowStepGlobalAuroraConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'parallelConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlanWorkflowStepParallelConfig>,
            List<Map<String, dynamic>>
          >(
            parallelConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  PlanWorkflowStepParallelConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'regionSwitchPlanConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlanWorkflowStepRegionSwitchPlanConfig>,
            List<Map<String, dynamic>>
          >(
            regionSwitchPlanConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  PlanWorkflowStepRegionSwitchPlanConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'route53HealthCheckConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlanWorkflowStepRoute53HealthCheckConfig>,
            List<Map<String, dynamic>>
          >(
            route53HealthCheckConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  PlanWorkflowStepRoute53HealthCheckConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory PlanWorkflowStep.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStep(
      arcRoutingControlConfigs: (() {
        final guardedValue = map['arcRoutingControlConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PlanWorkflowStepArcRoutingControlConfig>(
            guardedValue,
            (value) => PlanWorkflowStepArcRoutingControlConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      customActionLambdaConfigs: (() {
        final guardedValue = map['customActionLambdaConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PlanWorkflowStepCustomActionLambdaConfig>(
            guardedValue,
            (value) => PlanWorkflowStepCustomActionLambdaConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      documentDbConfigs: (() {
        final guardedValue = map['documentDbConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PlanWorkflowStepDocumentDbConfig>(
            guardedValue,
            (value) => PlanWorkflowStepDocumentDbConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ec2AsgCapacityIncreaseConfigs: (() {
        final guardedValue = map['ec2AsgCapacityIncreaseConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PlanWorkflowStepEc2AsgCapacityIncreaseConfig>(
            guardedValue,
            (value) => PlanWorkflowStepEc2AsgCapacityIncreaseConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      ecsCapacityIncreaseConfigs: (() {
        final guardedValue = map['ecsCapacityIncreaseConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PlanWorkflowStepEcsCapacityIncreaseConfig>(
            guardedValue,
            (value) => PlanWorkflowStepEcsCapacityIncreaseConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      eksResourceScalingConfigs: (() {
        final guardedValue = map['eksResourceScalingConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PlanWorkflowStepEksResourceScalingConfig>(
            guardedValue,
            (value) => PlanWorkflowStepEksResourceScalingConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      executionApprovalConfigs: (() {
        final guardedValue = map['executionApprovalConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PlanWorkflowStepExecutionApprovalConfig>(
            guardedValue,
            (value) => PlanWorkflowStepExecutionApprovalConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      executionBlockType: pulumi.Input.fromValue(
        map['executionBlockType'] as String,
      ),
      globalAuroraConfigs: (() {
        final guardedValue = map['globalAuroraConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PlanWorkflowStepGlobalAuroraConfig>(
            guardedValue,
            (value) => PlanWorkflowStepGlobalAuroraConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      parallelConfigs: (() {
        final guardedValue = map['parallelConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PlanWorkflowStepParallelConfig>(
            guardedValue,
            (value) => PlanWorkflowStepParallelConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      regionSwitchPlanConfigs: (() {
        final guardedValue = map['regionSwitchPlanConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PlanWorkflowStepRegionSwitchPlanConfig>(
            guardedValue,
            (value) => PlanWorkflowStepRegionSwitchPlanConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      route53HealthCheckConfigs: (() {
        final guardedValue = map['route53HealthCheckConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PlanWorkflowStepRoute53HealthCheckConfig>(
            guardedValue,
            (value) => PlanWorkflowStepRoute53HealthCheckConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
