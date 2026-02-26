/// Defines how target utilization value is expressed for a Stackdriver Monitoring metric. Either GAUGE, DELTA_PER_SECOND, or DELTA_PER_MINUTE.
enum AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType2 {
  deltaPerMinute("DELTA_PER_MINUTE"),
  deltaPerSecond("DELTA_PER_SECOND"),
  gauge("GAUGE");

  const AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType2(
      this.value);
  final String value;

  static AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType2
      fromValue(String value) {
    for (final item
        in AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType2
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AutoscalingPolicyCustomMetricUtilizationUtilizationTargetType2 value: $value');
  }
}
