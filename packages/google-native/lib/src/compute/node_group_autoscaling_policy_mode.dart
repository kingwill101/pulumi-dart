/// The autoscaling mode. Set to one of: ON, OFF, or ONLY_SCALE_OUT. For more information, see Autoscaler modes.
enum NodeGroupAutoscalingPolicyMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  off("OFF"),
  on("ON"),
  onlyScaleOut("ONLY_SCALE_OUT");

  const NodeGroupAutoscalingPolicyMode(this.value);
  final String value;

  static NodeGroupAutoscalingPolicyMode fromValue(String value) {
    for (final item in NodeGroupAutoscalingPolicyMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeGroupAutoscalingPolicyMode value: $value');
  }
}
