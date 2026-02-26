/// Indicates whether predictive autoscaling based on CPU metric is enabled. Valid values are: * NONE (default). No predictive method is used. The autoscaler scales the group to meet current demand based on real-time metrics. * OPTIMIZE_AVAILABILITY. Predictive autoscaling improves availability by monitoring daily and weekly load patterns and scaling out ahead of anticipated demand.
enum AutoscalingPolicyCpuUtilizationPredictiveMethod3 {
  none("NONE"),
  optimizeAvailability("OPTIMIZE_AVAILABILITY");

  const AutoscalingPolicyCpuUtilizationPredictiveMethod3(this.value);
  final String value;

  static AutoscalingPolicyCpuUtilizationPredictiveMethod3 fromValue(
      String value) {
    for (final item
        in AutoscalingPolicyCpuUtilizationPredictiveMethod3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AutoscalingPolicyCpuUtilizationPredictiveMethod3 value: $value');
  }
}
