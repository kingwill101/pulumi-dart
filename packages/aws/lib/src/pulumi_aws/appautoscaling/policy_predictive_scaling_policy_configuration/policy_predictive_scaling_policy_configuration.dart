// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../policy_predictive_scaling_policy_configuration_metric_specification/policy_predictive_scaling_policy_configuration_metric_specification.dart';

class PolicyPredictiveScalingPolicyConfiguration {
  /// The behavior that should be applied if the forecast capacity approaches or exceeds the maximum capacity. Valid values are `HonorMaxCapacity` and `IncreaseMaxCapacity`.
  final String? maxCapacityBreachBehavior;

  /// Size of the capacity buffer to use when the forecast capacity is close to or exceeds the maximum capacity. The value is specified as a percentage relative to the forecast capacity. Required if the <span pulumi-lang-nodejs="`maxCapacityBreachBehavior`" pulumi-lang-dotnet="`MaxCapacityBreachBehavior`" pulumi-lang-go="`maxCapacityBreachBehavior`" pulumi-lang-python="`max_capacity_breach_behavior`" pulumi-lang-yaml="`maxCapacityBreachBehavior`" pulumi-lang-java="`maxCapacityBreachBehavior`">`max_capacity_breach_behavior`</span> argument is set to `IncreaseMaxCapacity`, and cannot be used otherwise.
  final int? maxCapacityBuffer;

  /// Metrics and target utilization to use for predictive scaling. See supported fields below.
  final List<PolicyPredictiveScalingPolicyConfigurationMetricSpecification>
      metricSpecifications;

  /// Predictive scaling mode. Valid values are `ForecastOnly` and `ForecastAndScale`.
  final String? mode;

  /// Amount of time, in seconds, that the start time can be advanced.
  final int? schedulingBufferTime;

  PolicyPredictiveScalingPolicyConfiguration({
    this.maxCapacityBreachBehavior,
    this.maxCapacityBuffer,
    required this.metricSpecifications,
    this.mode,
    this.schedulingBufferTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxCapacityBreachBehaviorValue = maxCapacityBreachBehavior;
    if (maxCapacityBreachBehaviorValue != null) {
      map['maxCapacityBreachBehavior'] = maxCapacityBreachBehaviorValue;
    }
    final maxCapacityBufferValue = maxCapacityBuffer;
    if (maxCapacityBufferValue != null) {
      map['maxCapacityBuffer'] = maxCapacityBufferValue;
    }
    map['metricSpecifications'] = Input.encodeList<
        PolicyPredictiveScalingPolicyConfigurationMetricSpecification,
        Map<String, dynamic>>(metricSpecifications, (value) => value.toMap());
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final schedulingBufferTimeValue = schedulingBufferTime;
    if (schedulingBufferTimeValue != null) {
      map['schedulingBufferTime'] = schedulingBufferTimeValue;
    }
    return map;
  }

  factory PolicyPredictiveScalingPolicyConfiguration.fromMap(
      Map<String, dynamic> map) {
    return PolicyPredictiveScalingPolicyConfiguration(
      maxCapacityBreachBehavior: map['maxCapacityBreachBehavior'] == null
          ? null
          : map['maxCapacityBreachBehavior'] as String,
      maxCapacityBuffer: map['maxCapacityBuffer'] == null
          ? null
          : map['maxCapacityBuffer'] as int,
      metricSpecifications: Input.decodeList<
              PolicyPredictiveScalingPolicyConfigurationMetricSpecification>(
          map['metricSpecifications'],
          (value) =>
              PolicyPredictiveScalingPolicyConfigurationMetricSpecification
                  .fromMap((value as Map).cast<String, dynamic>())),
      mode: map['mode'] == null ? null : map['mode'] as String,
      schedulingBufferTime: map['schedulingBufferTime'] == null
          ? null
          : map['schedulingBufferTime'] as int,
    );
  }
}
