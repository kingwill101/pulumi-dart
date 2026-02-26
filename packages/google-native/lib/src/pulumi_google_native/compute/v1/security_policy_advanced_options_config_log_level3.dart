enum SecurityPolicyAdvancedOptionsConfigLogLevel3 {
  normal("NORMAL"),
  verbose("VERBOSE");

  const SecurityPolicyAdvancedOptionsConfigLogLevel3(this.value);
  final String value;

  static SecurityPolicyAdvancedOptionsConfigLogLevel3 fromValue(String value) {
    for (final item in SecurityPolicyAdvancedOptionsConfigLogLevel3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyAdvancedOptionsConfigLogLevel3 value: $value');
  }
}
