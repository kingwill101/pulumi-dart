/// Defines the operating mode for this policy. The following modes are available: - OFF: Disables the autoscaler but maintains its configuration. - ONLY_SCALE_OUT: Restricts the autoscaler to add VM instances only. - ON: Enables all autoscaler activities according to its policy. For more information, see "Turning off or restricting an autoscaler"
enum AutoscalingPolicyModeComputeV1 {
  off("OFF"),
  on("ON"),
  onlyScaleOut("ONLY_SCALE_OUT"),
  onlyUp("ONLY_UP");

  const AutoscalingPolicyModeComputeV1(this.value);
  final String value;

  static AutoscalingPolicyModeComputeV1 fromValue(String value) {
    for (final item in AutoscalingPolicyModeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoscalingPolicyModeComputeV1 value: $value');
  }
}

