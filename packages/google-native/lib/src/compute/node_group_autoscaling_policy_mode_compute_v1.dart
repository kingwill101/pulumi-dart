/// The autoscaling mode. Set to one of: ON, OFF, or ONLY_SCALE_OUT. For more information, see Autoscaler modes.
enum NodeGroupAutoscalingPolicyModeComputeV1 {
  modeUnspecified("MODE_UNSPECIFIED"),
  off("OFF"),
  on("ON"),
  onlyScaleOut("ONLY_SCALE_OUT");

  const NodeGroupAutoscalingPolicyModeComputeV1(this.value);
  final String value;

  static NodeGroupAutoscalingPolicyModeComputeV1 fromValue(String value) {
    for (final item in NodeGroupAutoscalingPolicyModeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NodeGroupAutoscalingPolicyModeComputeV1 value: $value',
    );
  }
}
