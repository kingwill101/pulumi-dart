/// Defines the operating mode for this policy. The following modes are available: - OFF: Disables the autoscaler but maintains its configuration. - ONLY_SCALE_OUT: Restricts the autoscaler to add VM instances only. - ON: Enables all autoscaler activities according to its policy. For more information, see "Turning off or restricting an autoscaler"
enum AutoscalingPolicyMode2 {
  off("OFF"),
  on("ON"),
  onlyScaleOut("ONLY_SCALE_OUT"),
  onlyUp("ONLY_UP");

  const AutoscalingPolicyMode2(this.value);
  final String value;

  static AutoscalingPolicyMode2 fromValue(String value) {
    for (final item in AutoscalingPolicyMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoscalingPolicyMode2 value: $value');
  }
}
