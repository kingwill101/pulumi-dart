// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../policy_predictive_scaling_configuration/policy_predictive_scaling_configuration.dart';
import '../policy_step_adjustment/policy_step_adjustment.dart';
import '../policy_target_tracking_configuration/policy_target_tracking_configuration.dart';

/// The set of arguments for Policy.
class PolicyAutoscalingArgs {
  /// Whether the adjustment is an absolute number or a percentage of the current capacity. Valid values are `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.
  final pulumi.Input<String>? adjustmentType;

  /// Name of the autoscaling group.
  final pulumi.Input<String> autoscalingGroupName;

  /// Amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start.
  final pulumi.Input<int>? cooldown;

  /// Whether the scaling policy is enabled or disabled. Default: `true`.
  ///
  /// The following argument is only available to "SimpleScaling" and "StepScaling" type policies:
  final pulumi.Input<bool>? enabled;

  /// Estimated time, in seconds, until a newly launched instance will contribute CloudWatch metrics. Without a value, AWS will default to the group's specified cooldown period.
  final pulumi.Input<int>? estimatedInstanceWarmup;

  /// Aggregation type for the policy's metrics. Valid values are "Minimum", "Maximum", and "Average". Without a value, AWS will treat the aggregation type as "Average".
  final pulumi.Input<String>? metricAggregationType;

  /// Minimum value to scale by when `adjustment_type` is set to `PercentChangeInCapacity`.
  ///
  /// The following arguments are only available to "SimpleScaling" type policies:
  final pulumi.Input<int>? minAdjustmentMagnitude;

  /// Name of the policy.
  final pulumi.Input<String>? name;

  /// Policy type, either "SimpleScaling", "StepScaling", "TargetTrackingScaling", or "PredictiveScaling". If this value isn't provided, AWS will default to "SimpleScaling."
  final pulumi.Input<String>? policyType;

  /// Predictive scaling policy configuration to use with Amazon EC2 Auto Scaling.
  final pulumi.Input<PolicyPredictiveScalingConfiguration>?
      predictiveScalingConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Number of members by which to
  /// scale, when the adjustment bounds are breached. A positive value scales
  /// up. A negative value scales down.
  final pulumi.Input<int>? scalingAdjustment;

  /// Set of adjustments that manage
  /// group scaling. These have the following structure:
  ///
  ///
  ///
  /// The following fields are available in step adjustments:
  final pulumi.Input<List<PolicyStepAdjustment>>? stepAdjustments;

  /// Target tracking policy. These have the following structure:
  ///
  ///
  ///
  /// The following fields are available in target tracking configuration:
  final pulumi.Input<PolicyTargetTrackingConfiguration>?
      targetTrackingConfiguration;

  PolicyAutoscalingArgs({
    this.adjustmentType,
    required this.autoscalingGroupName,
    this.cooldown,
    this.enabled,
    this.estimatedInstanceWarmup,
    this.metricAggregationType,
    this.minAdjustmentMagnitude,
    this.name,
    this.policyType,
    this.predictiveScalingConfiguration,
    this.region,
    this.scalingAdjustment,
    this.stepAdjustments,
    this.targetTrackingConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adjustmentTypeValue = adjustmentType;
    if (adjustmentTypeValue != null) {
      map['adjustmentType'] = adjustmentTypeValue;
    }
    map['autoscalingGroupName'] = autoscalingGroupName;
    final cooldownValue = cooldown;
    if (cooldownValue != null) {
      map['cooldown'] = cooldownValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final estimatedInstanceWarmupValue = estimatedInstanceWarmup;
    if (estimatedInstanceWarmupValue != null) {
      map['estimatedInstanceWarmup'] = estimatedInstanceWarmupValue;
    }
    final metricAggregationTypeValue = metricAggregationType;
    if (metricAggregationTypeValue != null) {
      map['metricAggregationType'] = metricAggregationTypeValue;
    }
    final minAdjustmentMagnitudeValue = minAdjustmentMagnitude;
    if (minAdjustmentMagnitudeValue != null) {
      map['minAdjustmentMagnitude'] = minAdjustmentMagnitudeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final policyTypeValue = policyType;
    if (policyTypeValue != null) {
      map['policyType'] = policyTypeValue;
    }
    final predictiveScalingConfigurationValue = predictiveScalingConfiguration;
    if (predictiveScalingConfigurationValue != null) {
      map['predictiveScalingConfiguration'] =
          pulumi.Input.mapOptionalInputValue<
                  PolicyPredictiveScalingConfiguration, Map<String, dynamic>>(
              predictiveScalingConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scalingAdjustmentValue = scalingAdjustment;
    if (scalingAdjustmentValue != null) {
      map['scalingAdjustment'] = scalingAdjustmentValue;
    }
    final stepAdjustmentsValue = stepAdjustments;
    if (stepAdjustmentsValue != null) {
      map['stepAdjustments'] = pulumi.Input.mapOptionalInputValue<
              List<PolicyStepAdjustment>, List<Map<String, dynamic>>>(
          stepAdjustmentsValue,
          (value) => pulumi.Input.encodeList<PolicyStepAdjustment,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final targetTrackingConfigurationValue = targetTrackingConfiguration;
    if (targetTrackingConfigurationValue != null) {
      map['targetTrackingConfiguration'] = pulumi.Input.mapOptionalInputValue<
              PolicyTargetTrackingConfiguration, Map<String, dynamic>>(
          targetTrackingConfigurationValue, (value) => value.toMap());
    }
    return map;
  }

  factory PolicyAutoscalingArgs.fromMap(Map<String, dynamic> map) {
    return PolicyAutoscalingArgs(
      adjustmentType:
          pulumi.Input.asOptionalInput<String>(map['adjustmentType']),
      autoscalingGroupName:
          pulumi.Input.asInput<String>(map['autoscalingGroupName']),
      cooldown: pulumi.Input.asOptionalInput<int>(map['cooldown']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      estimatedInstanceWarmup:
          pulumi.Input.asOptionalInput<int>(map['estimatedInstanceWarmup']),
      metricAggregationType:
          pulumi.Input.asOptionalInput<String>(map['metricAggregationType']),
      minAdjustmentMagnitude:
          pulumi.Input.asOptionalInput<int>(map['minAdjustmentMagnitude']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      policyType: pulumi.Input.asOptionalInput<String>(map['policyType']),
      predictiveScalingConfiguration:
          pulumi.Input.asOptionalInput<PolicyPredictiveScalingConfiguration>(
              map['predictiveScalingConfiguration']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      scalingAdjustment:
          pulumi.Input.asOptionalInput<int>(map['scalingAdjustment']),
      stepAdjustments: pulumi.Input.asOptionalInput<List<PolicyStepAdjustment>>(
          map['stepAdjustments']),
      targetTrackingConfiguration:
          pulumi.Input.asOptionalInput<PolicyTargetTrackingConfiguration>(
              map['targetTrackingConfiguration']),
    );
  }
}
