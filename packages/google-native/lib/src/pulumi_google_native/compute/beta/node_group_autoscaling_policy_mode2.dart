/// The autoscaling mode. Set to one of: ON, OFF, or ONLY_SCALE_OUT. For more information, see Autoscaler modes.
enum NodeGroupAutoscalingPolicyMode2 {
  modeUnspecified("MODE_UNSPECIFIED"),
  off("OFF"),
  on("ON"),
  onlyScaleOut("ONLY_SCALE_OUT");

  const NodeGroupAutoscalingPolicyMode2(this.value);
  final String value;

  static NodeGroupAutoscalingPolicyMode2 fromValue(String value) {
    for (final item in NodeGroupAutoscalingPolicyMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NodeGroupAutoscalingPolicyMode2 value: $value');
  }
}
