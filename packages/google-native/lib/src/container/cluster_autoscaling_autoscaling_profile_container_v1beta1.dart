/// Defines autoscaling behaviour.
enum ClusterAutoscalingAutoscalingProfileContainerV1beta1 {
  profileUnspecified("PROFILE_UNSPECIFIED"),
  optimizeUtilization("OPTIMIZE_UTILIZATION"),
  balanced("BALANCED");

  const ClusterAutoscalingAutoscalingProfileContainerV1beta1(this.value);
  final String value;

  static ClusterAutoscalingAutoscalingProfileContainerV1beta1 fromValue(
    String value,
  ) {
    for (final item
        in ClusterAutoscalingAutoscalingProfileContainerV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ClusterAutoscalingAutoscalingProfileContainerV1beta1 value: $value',
    );
  }
}
