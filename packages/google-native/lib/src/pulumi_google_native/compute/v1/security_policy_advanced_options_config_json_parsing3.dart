enum SecurityPolicyAdvancedOptionsConfigJsonParsing3 {
  disabled("DISABLED"),
  standard("STANDARD"),
  standardWithGraphql("STANDARD_WITH_GRAPHQL");

  const SecurityPolicyAdvancedOptionsConfigJsonParsing3(this.value);
  final String value;

  static SecurityPolicyAdvancedOptionsConfigJsonParsing3 fromValue(
      String value) {
    for (final item in SecurityPolicyAdvancedOptionsConfigJsonParsing3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyAdvancedOptionsConfigJsonParsing3 value: $value');
  }
}
