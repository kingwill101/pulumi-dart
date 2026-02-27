// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../policy_step_scaling_policy_configuration_step_adjustment/policy_step_scaling_policy_configuration_step_adjustment.dart';

class PolicyStepScalingPolicyConfiguration {
  /// Whether the adjustment is an absolute number or a percentage of the current capacity. Valid values are `ChangeInCapacity`, `ExactCapacity`, and `PercentChangeInCapacity`.
  final String? adjustmentType;

  /// Amount of time, in seconds, after a scaling activity completes and before the next scaling activity can start.
  final int? cooldown;

  /// Aggregation type for the policy's metrics. Valid values are "Minimum", "Maximum", and "Average". Without a value, AWS will treat the aggregation type as "Average".
  final String? metricAggregationType;

  /// Minimum number to adjust your scalable dimension as a result of a scaling activity. If the adjustment type is PercentChangeInCapacity, the scaling policy changes the scalable dimension of the scalable target by this amount.
  final int? minAdjustmentMagnitude;

  /// Set of adjustments that manage scaling. These have the following structure:
  final List<PolicyStepScalingPolicyConfigurationStepAdjustment>?
      stepAdjustments;

  PolicyStepScalingPolicyConfiguration({
    this.adjustmentType,
    this.cooldown,
    this.metricAggregationType,
    this.minAdjustmentMagnitude,
    this.stepAdjustments,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adjustmentTypeValue = adjustmentType;
    if (adjustmentTypeValue != null) {
      map['adjustmentType'] = adjustmentTypeValue;
    }
    final cooldownValue = cooldown;
    if (cooldownValue != null) {
      map['cooldown'] = cooldownValue;
    }
    final metricAggregationTypeValue = metricAggregationType;
    if (metricAggregationTypeValue != null) {
      map['metricAggregationType'] = metricAggregationTypeValue;
    }
    final minAdjustmentMagnitudeValue = minAdjustmentMagnitude;
    if (minAdjustmentMagnitudeValue != null) {
      map['minAdjustmentMagnitude'] = minAdjustmentMagnitudeValue;
    }
    final stepAdjustmentsValue = stepAdjustments;
    if (stepAdjustmentsValue != null) {
      map['stepAdjustments'] = Input.encodeList<
          PolicyStepScalingPolicyConfigurationStepAdjustment,
          Map<String, dynamic>>(stepAdjustmentsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PolicyStepScalingPolicyConfiguration.fromMap(
      Map<String, dynamic> map) {
    return PolicyStepScalingPolicyConfiguration(
      adjustmentType: map['adjustmentType'] == null
          ? null
          : map['adjustmentType'] as String,
      cooldown: map['cooldown'] == null ? null : map['cooldown'] as int,
      metricAggregationType: map['metricAggregationType'] == null
          ? null
          : map['metricAggregationType'] as String,
      minAdjustmentMagnitude: map['minAdjustmentMagnitude'] == null
          ? null
          : map['minAdjustmentMagnitude'] as int,
      stepAdjustments: map['stepAdjustments'] == null
          ? null
          : Input.decodeList<
                  PolicyStepScalingPolicyConfigurationStepAdjustment>(
              map['stepAdjustments'],
              (value) =>
                  PolicyStepScalingPolicyConfigurationStepAdjustment.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
