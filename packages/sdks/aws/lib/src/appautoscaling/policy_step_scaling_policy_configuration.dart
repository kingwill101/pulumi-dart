// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_step_scaling_policy_configuration_step_adjustment.dart';

class PolicyStepScalingPolicyConfiguration {
  /// Whether the adjustment is an absolute number or a percentage of the current capacity. Valid values are `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.
  final pulumi.Input<String?>? adjustmentType;
  /// Amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start.
  final pulumi.Input<int?>? cooldown;
  /// Aggregation type for the policy's metrics. Valid values are `Minimum`, `Maximum`, and `Average`. Without a value, AWS treats the aggregation type as `Average`.
  final pulumi.Input<String?>? metricAggregationType;
  /// Minimum number to adjust your scalable dimension as a result of a scaling activity. If the adjustment type is `PercentChangeInCapacity`, the scaling policy changes the scalable dimension of the scalable target by this amount.
  final pulumi.Input<int?>? minAdjustmentMagnitude;
  /// Set of adjustments that manage scaling. See `step_scaling_policy_configuration.step_adjustment` Block for details.
  final pulumi.Input<List<PolicyStepScalingPolicyConfigurationStepAdjustment>?>? stepAdjustments;

  /// Creates a new [PolicyStepScalingPolicyConfiguration].
  /// [adjustmentType] Whether the adjustment is an absolute number or a percentage of the current capacity. Valid values are `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.
  /// [cooldown] Amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start.
  /// [metricAggregationType] Aggregation type for the policy's metrics. Valid values are `Minimum`, `Maximum`, and `Average`. Without a value, AWS treats the aggregation type as `Average`.
  /// [minAdjustmentMagnitude] Minimum number to adjust your scalable dimension as a result of a scaling activity. If the adjustment type is `PercentChangeInCapacity`, the scaling policy changes the scalable dimension of the scalable target by this amount.
  /// [stepAdjustments] Set of adjustments that manage scaling. See `step_scaling_policy_configuration.step_adjustment` Block for details.
  const PolicyStepScalingPolicyConfiguration({
    this.adjustmentType,
    this.cooldown,
    this.metricAggregationType,
    this.minAdjustmentMagnitude,
    this.stepAdjustments,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adjustmentType': ?adjustmentType,
      'cooldown': ?cooldown,
      'metricAggregationType': ?metricAggregationType,
      'minAdjustmentMagnitude': ?minAdjustmentMagnitude,
      'stepAdjustments': ?pulumi.Input.mapOptionalInputValue<List<PolicyStepScalingPolicyConfigurationStepAdjustment>, List<Map<String, dynamic>>>(stepAdjustments, (value) => pulumi.Input.encodeList<PolicyStepScalingPolicyConfigurationStepAdjustment, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicyStepScalingPolicyConfiguration.fromMap(Map<String, dynamic> map) {
    return PolicyStepScalingPolicyConfiguration(
      adjustmentType: (() { final guardedValue = map['adjustmentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cooldown: (() { final guardedValue = map['cooldown']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      metricAggregationType: (() { final guardedValue = map['metricAggregationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minAdjustmentMagnitude: (() { final guardedValue = map['minAdjustmentMagnitude']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      stepAdjustments: (() { final guardedValue = map['stepAdjustments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyStepScalingPolicyConfigurationStepAdjustment>(guardedValue, (value) => PolicyStepScalingPolicyConfigurationStepAdjustment.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
