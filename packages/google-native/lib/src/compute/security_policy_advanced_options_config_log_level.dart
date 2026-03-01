enum SecurityPolicyAdvancedOptionsConfigLogLevel {
  normal("NORMAL"),
  verbose("VERBOSE");

  const SecurityPolicyAdvancedOptionsConfigLogLevel(this.value);
  final String value;

  static SecurityPolicyAdvancedOptionsConfigLogLevel fromValue(String value) {
    for (final item in SecurityPolicyAdvancedOptionsConfigLogLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SecurityPolicyAdvancedOptionsConfigLogLevel value: $value',
    );
  }
}
