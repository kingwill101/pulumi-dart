/// Mode for updating the instance.
enum UpdatePolicyMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  default_("DEFAULT"),
  forceApply("FORCE_APPLY");

  const UpdatePolicyMode(this.value);
  final String value;

  static UpdatePolicyMode fromValue(String value) {
    for (final item in UpdatePolicyMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpdatePolicyMode value: $value');
  }
}
