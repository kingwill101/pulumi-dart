enum SecurityPolicyAdvancedOptionsConfigLogLevel2 {
  normal("NORMAL"),
  verbose("VERBOSE");

  const SecurityPolicyAdvancedOptionsConfigLogLevel2(this.value);
  final String value;

  static SecurityPolicyAdvancedOptionsConfigLogLevel2 fromValue(String value) {
    for (final item in SecurityPolicyAdvancedOptionsConfigLogLevel2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyAdvancedOptionsConfigLogLevel2 value: $value');
  }
}
