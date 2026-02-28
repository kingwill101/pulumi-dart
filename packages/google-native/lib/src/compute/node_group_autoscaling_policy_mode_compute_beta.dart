/// The autoscaling mode. Set to one of: ON, OFF, or ONLY_SCALE_OUT. For more information, see Autoscaler modes.
enum NodeGroupAutoscalingPolicyModeComputeBeta {
  modeUnspecified("MODE_UNSPECIFIED"),
  off("OFF"),
  on("ON"),
  onlyScaleOut("ONLY_SCALE_OUT");

  const NodeGroupAutoscalingPolicyModeComputeBeta(this.value);
  final String value;

  static NodeGroupAutoscalingPolicyModeComputeBeta fromValue(String value) {
    for (final item in NodeGroupAutoscalingPolicyModeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NodeGroupAutoscalingPolicyModeComputeBeta value: $value');
  }
}
