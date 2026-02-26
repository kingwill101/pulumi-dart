/// The autoscaling mode. Set to one of: ON, OFF, or ONLY_SCALE_OUT. For more information, see Autoscaler modes.
enum NodeGroupAutoscalingPolicyMode3 {
  modeUnspecified("MODE_UNSPECIFIED"),
  off("OFF"),
  on("ON"),
  onlyScaleOut("ONLY_SCALE_OUT");

  const NodeGroupAutoscalingPolicyMode3(this.value);
  final String value;

  static NodeGroupAutoscalingPolicyMode3 fromValue(String value) {
    for (final item in NodeGroupAutoscalingPolicyMode3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NodeGroupAutoscalingPolicyMode3 value: $value');
  }
}
