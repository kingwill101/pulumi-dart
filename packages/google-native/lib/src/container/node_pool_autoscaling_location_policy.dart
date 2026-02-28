/// Location policy used when scaling up a nodepool.
enum NodePoolAutoscalingLocationPolicy {
  locationPolicyUnspecified("LOCATION_POLICY_UNSPECIFIED"),
  balanced("BALANCED"),
  any("ANY");

  const NodePoolAutoscalingLocationPolicy(this.value);
  final String value;

  static NodePoolAutoscalingLocationPolicy fromValue(String value) {
    for (final item in NodePoolAutoscalingLocationPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NodePoolAutoscalingLocationPolicy value: $value');
  }
}
