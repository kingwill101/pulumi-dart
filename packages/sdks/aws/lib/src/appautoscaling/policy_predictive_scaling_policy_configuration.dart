// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_predictive_scaling_policy_configuration_metric_specification.dart';

class PolicyPredictiveScalingPolicyConfiguration {
  /// The behavior that should be applied if the forecast capacity approaches or exceeds the maximum capacity. Valid values are `HonorMaxCapacity` and `IncreaseMaxCapacity`.
  final pulumi.Input<String>? maxCapacityBreachBehavior;
  /// Size of the capacity buffer to use when the forecast capacity is close to or exceeds the maximum capacity. The value is specified as a percentage relative to the forecast capacity. Required if the `max_capacity_breach_behavior` argument is set to `IncreaseMaxCapacity`, and cannot be used otherwise.
  final pulumi.Input<int>? maxCapacityBuffer;
  /// Metrics and target utilization to use for predictive scaling. See supported fields below.
  final pulumi.Input<List<PolicyPredictiveScalingPolicyConfigurationMetricSpecification>> metricSpecifications;
  /// Predictive scaling mode. Valid values are `ForecastOnly` and `ForecastAndScale`.
  final pulumi.Input<String>? mode;
  /// Amount of time, in seconds, that the start time can be advanced.
  final pulumi.Input<int>? schedulingBufferTime;

  /// Creates a new [PolicyPredictiveScalingPolicyConfiguration].
  /// [maxCapacityBreachBehavior] The behavior that should be applied if the forecast capacity approaches or exceeds the maximum capacity. Valid values are `HonorMaxCapacity` and `IncreaseMaxCapacity`.
  /// [maxCapacityBuffer] Size of the capacity buffer to use when the forecast capacity is close to or exceeds the maximum capacity. The value is specified as a percentage relative to the forecast capacity. Required if the `max_capacity_breach_behavior` argument is set to `IncreaseMaxCapacity`, and cannot be used otherwise.
  /// [metricSpecifications] Metrics and target utilization to use for predictive scaling. See supported fields below.
  /// [mode] Predictive scaling mode. Valid values are `ForecastOnly` and `ForecastAndScale`.
  /// [schedulingBufferTime] Amount of time, in seconds, that the start time can be advanced.
  PolicyPredictiveScalingPolicyConfiguration({
    this.maxCapacityBreachBehavior,
    this.maxCapacityBuffer,
    required this.metricSpecifications,
    this.mode,
    this.schedulingBufferTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacityBreachBehavior': ?maxCapacityBreachBehavior,
      'maxCapacityBuffer': ?maxCapacityBuffer,
      'metricSpecifications': pulumi.Input.mapInputValue<List<PolicyPredictiveScalingPolicyConfigurationMetricSpecification>, List<Map<String, dynamic>>>(metricSpecifications, (value) => pulumi.Input.encodeList<PolicyPredictiveScalingPolicyConfigurationMetricSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mode': ?mode,
      'schedulingBufferTime': ?schedulingBufferTime,
    };
  }

  factory PolicyPredictiveScalingPolicyConfiguration.fromMap(Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfiguration(
      maxCapacityBreachBehavior: (() { final guardedValue = map['maxCapacityBreachBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxCapacityBuffer: (() { final guardedValue = map['maxCapacityBuffer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      metricSpecifications: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyPredictiveScalingPolicyConfigurationMetricSpecification>(map['metricSpecifications']!, (value) => PolicyPredictiveScalingPolicyConfigurationMetricSpecification.fromMap((value as Map).cast<String, dynamic>()))),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedulingBufferTime: (() { final guardedValue = map['schedulingBufferTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

