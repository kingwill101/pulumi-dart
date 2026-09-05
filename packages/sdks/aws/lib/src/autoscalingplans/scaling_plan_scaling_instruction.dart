// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scaling_plan_scaling_instruction_customized_load_metric_specification.dart';
import 'scaling_plan_scaling_instruction_predefined_load_metric_specification.dart';
import 'scaling_plan_scaling_instruction_target_tracking_configuration.dart';

class ScalingPlanScalingInstruction {
  /// Customized load metric to use for predictive scaling. You must specify either `customizedLoadMetricSpecification` or `predefinedLoadMetricSpecification` when configuring predictive scaling.
  /// More details can be found in the [AWS Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_CustomizedLoadMetricSpecification.html).
  final pulumi.Input<ScalingPlanScalingInstructionCustomizedLoadMetricSpecification?>? customizedLoadMetricSpecification;
  /// Boolean controlling whether dynamic scaling by AWS Auto Scaling is disabled. Defaults to `false`.
  final pulumi.Input<bool?>? disableDynamicScaling;
  /// Maximum capacity of the resource. The exception to this upper limit is if you specify a non-default setting for `predictiveScalingMaxCapacityBehavior`.
  final pulumi.Input<int> maxCapacity;
  /// Minimum capacity of the resource.
  final pulumi.Input<int> minCapacity;
  /// Predefined load metric to use for predictive scaling. You must specify either `predefinedLoadMetricSpecification` or `customizedLoadMetricSpecification` when configuring predictive scaling.
  /// More details can be found in the [AWS Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_PredefinedLoadMetricSpecification.html).
  final pulumi.Input<ScalingPlanScalingInstructionPredefinedLoadMetricSpecification?>? predefinedLoadMetricSpecification;
  /// Defines the behavior that should be applied if the forecast capacity approaches or exceeds the maximum capacity specified for the resource.
  /// Valid values: `SetForecastCapacityToMaxCapacity`, `SetMaxCapacityAboveForecastCapacity`, `SetMaxCapacityToForecastCapacity`.
  final pulumi.Input<String?>? predictiveScalingMaxCapacityBehavior;
  /// Size of the capacity buffer to use when the forecast capacity is close to or exceeds the maximum capacity.
  final pulumi.Input<int?>? predictiveScalingMaxCapacityBuffer;
  /// Predictive scaling mode. Valid values: `ForecastAndScale`, `ForecastOnly`.
  final pulumi.Input<String?>? predictiveScalingMode;
  /// ID of the resource. This string consists of the resource type and unique identifier.
  final pulumi.Input<String> resourceId;
  /// Scalable dimension associated with the resource. Valid values: `autoscaling:autoScalingGroup:DesiredCapacity`, `dynamodb:index:ReadCapacityUnits`, `dynamodb:index:WriteCapacityUnits`, `dynamodb:table:ReadCapacityUnits`, `dynamodb:table:WriteCapacityUnits`, `ecs:service:DesiredCount`, `ec2:spot-fleet-request:TargetCapacity`, `rds:cluster:ReadReplicaCount`.
  final pulumi.Input<String> scalableDimension;
  /// Controls whether a resource's externally created scaling policies are kept or replaced. Valid values: `KeepExternalPolicies`, `ReplaceExternalPolicies`. Defaults to `KeepExternalPolicies`.
  final pulumi.Input<String?>? scalingPolicyUpdateBehavior;
  /// Amount of time, in seconds, to buffer the run time of scheduled scaling actions when scaling out.
  final pulumi.Input<int?>? scheduledActionBufferTime;
  /// Namespace of the AWS service. Valid values: `autoscaling`, `dynamodb`, `ecs`, `ec2`, `rds`.
  final pulumi.Input<String> serviceNamespace;
  /// Structure that defines new target tracking configurations. Each of these structures includes a specific scaling metric and a target value for the metric, along with various parameters to use with dynamic scaling.
  /// More details can be found in the [AWS Auto Scaling API Reference](https://docs.aws.amazon.com/autoscaling/plans/APIReference/API_TargetTrackingConfiguration.html).
  final pulumi.Input<List<ScalingPlanScalingInstructionTargetTrackingConfiguration>> targetTrackingConfigurations;

  /// Creates a new [ScalingPlanScalingInstruction].
  /// [customizedLoadMetricSpecification] Customized load metric to use for predictive scaling. You must specify either `customizedLoadMetricSpecification` or `predefinedLoadMetricSpecification` when configuring predictive scaling.
  /// [disableDynamicScaling] Boolean controlling whether dynamic scaling by AWS Auto Scaling is disabled. Defaults to `false`.
  /// [maxCapacity] Maximum capacity of the resource. The exception to this upper limit is if you specify a non-default setting for `predictiveScalingMaxCapacityBehavior`.
  /// [minCapacity] Minimum capacity of the resource.
  /// [predefinedLoadMetricSpecification] Predefined load metric to use for predictive scaling. You must specify either `predefinedLoadMetricSpecification` or `customizedLoadMetricSpecification` when configuring predictive scaling.
  /// [predictiveScalingMaxCapacityBehavior] Defines the behavior that should be applied if the forecast capacity approaches or exceeds the maximum capacity specified for the resource.
  /// [predictiveScalingMaxCapacityBuffer] Size of the capacity buffer to use when the forecast capacity is close to or exceeds the maximum capacity.
  /// [predictiveScalingMode] Predictive scaling mode. Valid values: `ForecastAndScale`, `ForecastOnly`.
  /// [resourceId] ID of the resource. This string consists of the resource type and unique identifier.
  /// [scalableDimension] Scalable dimension associated with the resource. Valid values: `autoscaling:autoScalingGroup:DesiredCapacity`, `dynamodb:index:ReadCapacityUnits`, `dynamodb:index:WriteCapacityUnits`, `dynamodb:table:ReadCapacityUnits`, `dynamodb:table:WriteCapacityUnits`, `ecs:service:DesiredCount`, `ec2:spot-fleet-request:TargetCapacity`, `rds:cluster:ReadReplicaCount`.
  /// [scalingPolicyUpdateBehavior] Controls whether a resource's externally created scaling policies are kept or replaced. Valid values: `KeepExternalPolicies`, `ReplaceExternalPolicies`. Defaults to `KeepExternalPolicies`.
  /// [scheduledActionBufferTime] Amount of time, in seconds, to buffer the run time of scheduled scaling actions when scaling out.
  /// [serviceNamespace] Namespace of the AWS service. Valid values: `autoscaling`, `dynamodb`, `ecs`, `ec2`, `rds`.
  /// [targetTrackingConfigurations] Structure that defines new target tracking configurations. Each of these structures includes a specific scaling metric and a target value for the metric, along with various parameters to use with dynamic scaling.
  const ScalingPlanScalingInstruction({
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
    return <String, dynamic>{
      'customizedLoadMetricSpecification': ?pulumi.Input.mapOptionalInputValue<ScalingPlanScalingInstructionCustomizedLoadMetricSpecification, Map<String, dynamic>>(customizedLoadMetricSpecification, (value) => value.toMap()),
      'disableDynamicScaling': ?disableDynamicScaling,
      'maxCapacity': maxCapacity,
      'minCapacity': minCapacity,
      'predefinedLoadMetricSpecification': ?pulumi.Input.mapOptionalInputValue<ScalingPlanScalingInstructionPredefinedLoadMetricSpecification, Map<String, dynamic>>(predefinedLoadMetricSpecification, (value) => value.toMap()),
      'predictiveScalingMaxCapacityBehavior': ?predictiveScalingMaxCapacityBehavior,
      'predictiveScalingMaxCapacityBuffer': ?predictiveScalingMaxCapacityBuffer,
      'predictiveScalingMode': ?predictiveScalingMode,
      'resourceId': resourceId,
      'scalableDimension': scalableDimension,
      'scalingPolicyUpdateBehavior': ?scalingPolicyUpdateBehavior,
      'scheduledActionBufferTime': ?scheduledActionBufferTime,
      'serviceNamespace': serviceNamespace,
      'targetTrackingConfigurations': pulumi.Input.mapInputValue<List<ScalingPlanScalingInstructionTargetTrackingConfiguration>, List<Map<String, dynamic>>>(targetTrackingConfigurations, (value) => pulumi.Input.encodeList<ScalingPlanScalingInstructionTargetTrackingConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScalingPlanScalingInstruction.fromMap(Map<String, dynamic> map) {
    return ScalingPlanScalingInstruction(
      customizedLoadMetricSpecification: (() { final guardedValue = map['customizedLoadMetricSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScalingPlanScalingInstructionCustomizedLoadMetricSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disableDynamicScaling: (() { final guardedValue = map['disableDynamicScaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxCapacity: pulumi.Input.fromValue((map['maxCapacity'] as num).toInt()),
      minCapacity: pulumi.Input.fromValue((map['minCapacity'] as num).toInt()),
      predefinedLoadMetricSpecification: (() { final guardedValue = map['predefinedLoadMetricSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScalingPlanScalingInstructionPredefinedLoadMetricSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      predictiveScalingMaxCapacityBehavior: (() { final guardedValue = map['predictiveScalingMaxCapacityBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      predictiveScalingMaxCapacityBuffer: (() { final guardedValue = map['predictiveScalingMaxCapacityBuffer']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      predictiveScalingMode: (() { final guardedValue = map['predictiveScalingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      scalableDimension: pulumi.Input.fromValue(map['scalableDimension'] as String),
      scalingPolicyUpdateBehavior: (() { final guardedValue = map['scalingPolicyUpdateBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduledActionBufferTime: (() { final guardedValue = map['scheduledActionBufferTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      serviceNamespace: pulumi.Input.fromValue(map['serviceNamespace'] as String),
      targetTrackingConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<ScalingPlanScalingInstructionTargetTrackingConfiguration>(map['targetTrackingConfigurations']!, (value) => ScalingPlanScalingInstructionTargetTrackingConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
