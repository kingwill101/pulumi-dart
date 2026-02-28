/// Defines how target utilization value is expressed for a Stackdriver Monitoring metric. Either GAUGE, DELTA_PER_SECOND, or DELTA_PER_MINUTE.
enum AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType {
  deltaPerMinute("DELTA_PER_MINUTE"),
  deltaPerSecond("DELTA_PER_SECOND"),
  gauge("GAUGE");

  const AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType(
      this.value);
  final String value;

  static AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType
      fromValue(String value) {
    for (final item
        in AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType value: $value');
  }
}
