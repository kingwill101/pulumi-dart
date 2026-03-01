// ignore_for_file: unused_element, unnecessary_cast

import 'policy_predictive_scaling_configuration_metric_specification.dart';

class PolicyPredictiveScalingConfiguration {
  /// Defines the behavior that should be applied if the forecast capacity approaches or exceeds the maximum capacity of the Auto Scaling group. Valid values are `HonorMaxCapacity` or `IncreaseMaxCapacity`. Default is `HonorMaxCapacity`.
  final String? maxCapacityBreachBehavior;

  /// Size of the capacity buffer to use when the forecast capacity is close to or exceeds the maximum capacity. Valid range is `0` to `100`. If set to `0`, Amazon EC2 Auto Scaling may scale capacity higher than the maximum capacity to equal but not exceed forecast capacity.
  final String? maxCapacityBuffer;

  /// This structure includes the metrics and target utilization to use for predictive scaling.
  final PolicyPredictiveScalingConfigurationMetricSpecification
  metricSpecification;

  /// Predictive scaling mode. Valid values are `ForecastAndScale` and `ForecastOnly`. Default is `ForecastOnly`.
  final String? mode;

  /// Amount of time, in seconds, by which the instance launch time can be advanced. Minimum is `0`.
  final String? schedulingBufferTime;

  /// Creates a new [PolicyPredictiveScalingConfiguration].
  /// [maxCapacityBreachBehavior] Defines the behavior that should be applied if the forecast capacity approaches or exceeds the maximum capacity of the Auto Scaling group. Valid values are `HonorMaxCapacity` or `IncreaseMaxCapacity`. Default is `HonorMaxCapacity`.
  /// [maxCapacityBuffer] Size of the capacity buffer to use when the forecast capacity is close to or exceeds the maximum capacity. Valid range is `0` to `100`. If set to `0`, Amazon EC2 Auto Scaling may scale capacity higher than the maximum capacity to equal but not exceed forecast capacity.
  /// [metricSpecification] This structure includes the metrics and target utilization to use for predictive scaling.
  /// [mode] Predictive scaling mode. Valid values are `ForecastAndScale` and `ForecastOnly`. Default is `ForecastOnly`.
  /// [schedulingBufferTime] Amount of time, in seconds, by which the instance launch time can be advanced. Minimum is `0`.
  PolicyPredictiveScalingConfiguration({
    this.maxCapacityBreachBehavior,
    this.maxCapacityBuffer,
    required this.metricSpecification,
    this.mode,
    this.schedulingBufferTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxCapacityBreachBehavior': ?maxCapacityBreachBehavior,
      'maxCapacityBuffer': ?maxCapacityBuffer,
      'metricSpecification': metricSpecification.toMap(),
      'mode': ?mode,
      'schedulingBufferTime': ?schedulingBufferTime,
    };
  }

  factory PolicyPredictiveScalingConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return PolicyPredictiveScalingConfiguration(
      maxCapacityBreachBehavior: map['maxCapacityBreachBehavior'] == null
          ? null
          : map['maxCapacityBreachBehavior'] as String,
      maxCapacityBuffer: map['maxCapacityBuffer'] == null
          ? null
          : map['maxCapacityBuffer'] as String,
      metricSpecification:
          PolicyPredictiveScalingConfigurationMetricSpecification.fromMap(
            (map['metricSpecification'] as Map).cast<String, dynamic>(),
          ),
      mode: map['mode'] == null ? null : map['mode'] as String,
      schedulingBufferTime: map['schedulingBufferTime'] == null
          ? null
          : map['schedulingBufferTime'] as String,
    );
  }
}
