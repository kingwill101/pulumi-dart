/// Location policy used when scaling up a nodepool.
enum NodePoolAutoscalingLocationPolicy2 {
  locationPolicyUnspecified("LOCATION_POLICY_UNSPECIFIED"),
  balanced("BALANCED"),
  any("ANY");

  const NodePoolAutoscalingLocationPolicy2(this.value);
  final String value;

  static NodePoolAutoscalingLocationPolicy2 fromValue(String value) {
    for (final item in NodePoolAutoscalingLocationPolicy2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NodePoolAutoscalingLocationPolicy2 value: $value');
  }
}
