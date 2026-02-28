// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_plan_scaling_instruction_customized_load_metric_specification.dart';
import 'scaling_plan_scaling_instruction_predefined_load_metric_specification.dart';
import 'scaling_plan_scaling_instruction_target_tracking_configuration.dart';

class ScalingPlanScalingInstruction {
  /// Customized load metric to use for predictive scaling. You must specify either `customized_load_metric_specification` or `predefined_load_metric_specification` when configuring predictive scaling.
  /// More details can be found in the [AWS Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_CustomizedLoadMetricSpecification.html).
  final ScalingPlanScalingInstructionCustomizedLoadMetricSpecification?
      customizedLoadMetricSpecification;

  /// Boolean controlling whether dynamic scaling by AWS Auto Scaling is disabled. Defaults to `false`.
  final bool? disableDynamicScaling;

  /// Maximum capacity of the resource. The exception to this upper limit is if you specify a non-default setting for `predictive_scaling_max_capacity_behavior`.
  final int maxCapacity;

  /// Minimum capacity of the resource.
  final int minCapacity;

  /// Predefined load metric to use for predictive scaling. You must specify either `predefined_load_metric_specification` or `customized_load_metric_specification` when configuring predictive scaling.
  /// More details can be found in the [AWS Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_PredefinedLoadMetricSpecification.html).
  final ScalingPlanScalingInstructionPredefinedLoadMetricSpecification?
      predefinedLoadMetricSpecification;

  /// Defines the behavior that should be applied if the forecast capacity approaches or exceeds the maximum capacity specified for the resource.
  /// Valid values: `SetForecastCapacityToMaxCapacity`, `SetMaxCapacityAboveForecastCapacity`, `SetMaxCapacityToForecastCapacity`.
  final String? predictiveScalingMaxCapacityBehavior;

  /// Size of the capacity buffer to use when the forecast capacity is close to or exceeds the maximum capacity.
  final int? predictiveScalingMaxCapacityBuffer;

  /// Predictive scaling mode. Valid values: `ForecastAndScale`, `ForecastOnly`.
  final String? predictiveScalingMode;

  /// ID of the resource. This string consists of the resource type and unique identifier.
  final String resourceId;

  /// Scalable dimension associated with the resource. Valid values: `autoscaling:autoScalingGroup:DesiredCapacity`, `dynamodb:index:ReadCapacityUnits`, `dynamodb:index:WriteCapacityUnits`, `dynamodb:table:ReadCapacityUnits`, `dynamodb:table:WriteCapacityUnits`, `ecs:service:DesiredCount`, `ec2:spot-fleet-request:TargetCapacity`, `rds:cluster:ReadReplicaCount`.
  final String scalableDimension;

  /// Controls whether a resource's externally created scaling policies are kept or replaced. Valid values: `KeepExternalPolicies`, `ReplaceExternalPolicies`. Defaults to `KeepExternalPolicies`.
  final String? scalingPolicyUpdateBehavior;

  /// Amount of time, in seconds, to buffer the run time of scheduled scaling actions when scaling out.
  final int? scheduledActionBufferTime;

  /// Namespace of the AWS service. Valid values: `autoscaling`, `dynamodb`, `ecs`, `ec2`, `rds`.
  final String serviceNamespace;

  /// Structure that defines new target tracking configurations. Each of these structures includes a specific scaling metric and a target value for the metric, along with various parameters to use with dynamic scaling.
  /// More details can be found in the [AWS Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_TargetTrackingConfiguration.html).
  final List<ScalingPlanScalingInstructionTargetTrackingConfiguration>
      targetTrackingConfigurations;

  /// Creates a new [ScalingPlanScalingInstruction].
  /// [customizedLoadMetricSpecification] Customized load metric to use for predictive scaling. You must specify either `customized_load_metric_specification` or `predefined_load_metric_specification` when configuring predictive scaling.
  /// [disableDynamicScaling] Boolean controlling whether dynamic scaling by AWS Auto Scaling is disabled. Defaults to `false`.
  /// [maxCapacity] Maximum capacity of the resource. The exception to this upper limit is if you specify a non-default setting for `predictive_scaling_max_capacity_behavior`.
  /// [minCapacity] Minimum capacity of the resource.
  /// [predefinedLoadMetricSpecification] Predefined load metric to use for predictive scaling. You must specify either `predefined_load_metric_specification` or `customized_load_metric_specification` when configuring predictive scaling.
  /// [predictiveScalingMaxCapacityBehavior] Defines the behavior that should be applied if the forecast capacity approaches or exceeds the maximum capacity specified for the resource.
  /// [predictiveScalingMaxCapacityBuffer] Size of the capacity buffer to use when the forecast capacity is close to or exceeds the maximum capacity.
  /// [predictiveScalingMode] Predictive scaling mode. Valid values: `ForecastAndScale`, `ForecastOnly`.
  /// [resourceId] ID of the resource. This string consists of the resource type and unique identifier.
  /// [scalableDimension] Scalable dimension associated with the resource. Valid values: `autoscaling:autoScalingGroup:DesiredCapacity`, `dynamodb:index:ReadCapacityUnits`, `dynamodb:index:WriteCapacityUnits`, `dynamodb:table:ReadCapacityUnits`, `dynamodb:table:WriteCapacityUnits`, `ecs:service:DesiredCount`, `ec2:spot-fleet-request:TargetCapacity`, `rds:cluster:ReadReplicaCount`.
  /// [scalingPolicyUpdateBehavior] Controls whether a resource's externally created scaling policies are kept or replaced. Valid values: `KeepExternalPolicies`, `ReplaceExternalPolicies`. Defaults to `KeepExternalPolicies`.
  /// [scheduledActionBufferTime] Amount of time, in seconds, to buffer the run time of scheduled scaling actions when scaling out.
  /// [serviceNamespace] Namespace of the AWS service. Valid values: `autoscaling`, `dynamodb`, `ecs`, `ec2`, `rds`.
  /// [targetTrackingConfigurations] Structure that defines new target tracking configurations. Each of these structures includes a specific scaling metric and a target value for the metric, along with various parameters to use with dynamic scaling.
  ScalingPlanScalingInstruction({
    this.customizedLoadMetricSpecification,
    this.disableDynamicScaling,
    required this.maxCapacity,
    required this.minCapacity,
    this.predefinedLoadMetricSpecification,
    this.predictiveScalingMaxCapacityBehavior,
    this.predictiveScalingMaxCapacityBuffer,
    this.predictiveScalingMode,
    required this.resourceId,
    required this.scalableDimension,
    this.scalingPolicyUpdateBehavior,
    this.scheduledActionBufferTime,
    required this.serviceNamespace,
    required this.targetTrackingConfigurations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customizedLoadMetricSpecificationValue =
        customizedLoadMetricSpecification;
    if (customizedLoadMetricSpecificationValue != null) {
      map['customizedLoadMetricSpecification'] =
          customizedLoadMetricSpecificationValue.toMap();
    }
    final disableDynamicScalingValue = disableDynamicScaling;
    if (disableDynamicScalingValue != null) {
      map['disableDynamicScaling'] = disableDynamicScalingValue;
    }
    map['maxCapacity'] = maxCapacity;
    map['minCapacity'] = minCapacity;
    final predefinedLoadMetricSpecificationValue =
        predefinedLoadMetricSpecification;
    if (predefinedLoadMetricSpecificationValue != null) {
      map['predefinedLoadMetricSpecification'] =
          predefinedLoadMetricSpecificationValue.toMap();
    }
    final predictiveScalingMaxCapacityBehaviorValue =
        predictiveScalingMaxCapacityBehavior;
    if (predictiveScalingMaxCapacityBehaviorValue != null) {
      map['predictiveScalingMaxCapacityBehavior'] =
          predictiveScalingMaxCapacityBehaviorValue;
    }
    final predictiveScalingMaxCapacityBufferValue =
        predictiveScalingMaxCapacityBuffer;
    if (predictiveScalingMaxCapacityBufferValue != null) {
      map['predictiveScalingMaxCapacityBuffer'] =
          predictiveScalingMaxCapacityBufferValue;
    }
    final predictiveScalingModeValue = predictiveScalingMode;
    if (predictiveScalingModeValue != null) {
      map['predictiveScalingMode'] = predictiveScalingModeValue;
    }
    map['resourceId'] = resourceId;
    map['scalableDimension'] = scalableDimension;
    final scalingPolicyUpdateBehaviorValue = scalingPolicyUpdateBehavior;
    if (scalingPolicyUpdateBehaviorValue != null) {
      map['scalingPolicyUpdateBehavior'] = scalingPolicyUpdateBehaviorValue;
    }
    final scheduledActionBufferTimeValue = scheduledActionBufferTime;
    if (scheduledActionBufferTimeValue != null) {
      map['scheduledActionBufferTime'] = scheduledActionBufferTimeValue;
    }
    map['serviceNamespace'] = serviceNamespace;
    map['targetTrackingConfigurations'] = pulumi.Input.encodeList<
            ScalingPlanScalingInstructionTargetTrackingConfiguration,
            Map<String, dynamic>>(
        targetTrackingConfigurations, (value) => value.toMap());
    return map;
  }

  factory ScalingPlanScalingInstruction.fromMap(Map<String, dynamic> map) {
    return ScalingPlanScalingInstruction(
      customizedLoadMetricSpecification:
          map['customizedLoadMetricSpecification'] == null
              ? null
              : ScalingPlanScalingInstructionCustomizedLoadMetricSpecification
                  .fromMap((map['customizedLoadMetricSpecification'] as Map)
                      .cast<String, dynamic>()),
      disableDynamicScaling: map['disableDynamicScaling'] == null
          ? null
          : map['disableDynamicScaling'] as bool,
      maxCapacity: map['maxCapacity'] as int,
      minCapacity: map['minCapacity'] as int,
      predefinedLoadMetricSpecification:
          map['predefinedLoadMetricSpecification'] == null
              ? null
              : ScalingPlanScalingInstructionPredefinedLoadMetricSpecification
                  .fromMap((map['predefinedLoadMetricSpecification'] as Map)
                      .cast<String, dynamic>()),
      predictiveScalingMaxCapacityBehavior:
          map['predictiveScalingMaxCapacityBehavior'] == null
              ? null
              : map['predictiveScalingMaxCapacityBehavior'] as String,
      predictiveScalingMaxCapacityBuffer:
          map['predictiveScalingMaxCapacityBuffer'] == null
              ? null
              : map['predictiveScalingMaxCapacityBuffer'] as int,
      predictiveScalingMode: map['predictiveScalingMode'] == null
          ? null
          : map['predictiveScalingMode'] as String,
      resourceId: map['resourceId'] as String,
      scalableDimension: map['scalableDimension'] as String,
      scalingPolicyUpdateBehavior: map['scalingPolicyUpdateBehavior'] == null
          ? null
          : map['scalingPolicyUpdateBehavior'] as String,
      scheduledActionBufferTime: map['scheduledActionBufferTime'] == null
          ? null
          : map['scheduledActionBufferTime'] as int,
      serviceNamespace: map['serviceNamespace'] as String,
      targetTrackingConfigurations: pulumi.Input.decodeList<
              ScalingPlanScalingInstructionTargetTrackingConfiguration>(
          map['targetTrackingConfigurations'],
          (value) =>
              ScalingPlanScalingInstructionTargetTrackingConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
