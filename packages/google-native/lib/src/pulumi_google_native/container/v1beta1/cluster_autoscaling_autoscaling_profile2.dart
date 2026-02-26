/// Defines autoscaling behaviour.
enum ClusterAutoscalingAutoscalingProfile2 {
  profileUnspecified("PROFILE_UNSPECIFIED"),
  optimizeUtilization("OPTIMIZE_UTILIZATION"),
  balanced("BALANCED");

  const ClusterAutoscalingAutoscalingProfile2(this.value);
  final String value;

  static ClusterAutoscalingAutoscalingProfile2 fromValue(String value) {
    for (final item in ClusterAutoscalingAutoscalingProfile2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ClusterAutoscalingAutoscalingProfile2 value: $value');
  }
}
