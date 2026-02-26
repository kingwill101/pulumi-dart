/// Required. Policy mode
enum OSPolicyMode2 {
  modeUnspecified("MODE_UNSPECIFIED"),
  validation("VALIDATION"),
  enforcement("ENFORCEMENT");

  const OSPolicyMode2(this.value);
  final String value;

  static OSPolicyMode2 fromValue(String value) {
    for (final item in OSPolicyMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSPolicyMode2 value: $value');
  }
}
