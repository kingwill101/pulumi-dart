/// Mode for updating the instance.
enum UpdatePolicyMode2 {
  modeUnspecified("MODE_UNSPECIFIED"),
  default_("DEFAULT"),
  forceApply("FORCE_APPLY");

  const UpdatePolicyMode2(this.value);
  final String value;

  static UpdatePolicyMode2 fromValue(String value) {
    for (final item in UpdatePolicyMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UpdatePolicyMode2 value: $value');
  }
}
