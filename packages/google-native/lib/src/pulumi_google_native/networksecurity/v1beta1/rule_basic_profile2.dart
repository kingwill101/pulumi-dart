/// Required. Profile which tells what the primitive action should be.
enum RuleBasicProfile2 {
  basicProfileUnspecified("BASIC_PROFILE_UNSPECIFIED"),
  allow("ALLOW"),
  deny("DENY");

  const RuleBasicProfile2(this.value);
  final String value;

  static RuleBasicProfile2 fromValue(String value) {
    for (final item in RuleBasicProfile2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RuleBasicProfile2 value: $value');
  }
}
