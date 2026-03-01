/// Required. Policy mode
enum OSPolicyMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  validation("VALIDATION"),
  enforcement("ENFORCEMENT");

  const OSPolicyMode(this.value);
  final String value;

  static OSPolicyMode fromValue(String value) {
    for (final item in OSPolicyMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OSPolicyMode value: $value');
  }
}
