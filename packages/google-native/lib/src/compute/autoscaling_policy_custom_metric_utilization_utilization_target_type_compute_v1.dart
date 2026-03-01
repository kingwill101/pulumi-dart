/// Defines how target utilization value is expressed for a Stackdriver Monitoring metric. Either GAUGE, DELTA_PER_SECOND, or DELTA_PER_MINUTE.
enum AutoscalingPolicyCustomMetricUtilizationUtilizationTargetTypeComputeV1 {
  deltaPerMinute("DELTA_PER_MINUTE"),
  deltaPerSecond("DELTA_PER_SECOND"),
  gauge("GAUGE");

  const AutoscalingPolicyCustomMetricUtilizationUtilizationTargetTypeComputeV1(
    this.value,
  );
  final String value;

  static AutoscalingPolicyCustomMetricUtilizationUtilizationTargetTypeComputeV1
  fromValue(String value) {
    for (final item
        in AutoscalingPolicyCustomMetricUtilizationUtilizationTargetTypeComputeV1
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown AutoscalingPolicyCustomMetricUtilizationUtilizationTargetTypeComputeV1 value: $value',
    );
  }
}
