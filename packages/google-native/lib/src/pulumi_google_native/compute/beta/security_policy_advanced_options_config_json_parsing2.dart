enum SecurityPolicyAdvancedOptionsConfigJsonParsing2 {
  disabled("DISABLED"),
  standard("STANDARD"),
  standardWithGraphql("STANDARD_WITH_GRAPHQL");

  const SecurityPolicyAdvancedOptionsConfigJsonParsing2(this.value);
  final String value;

  static SecurityPolicyAdvancedOptionsConfigJsonParsing2 fromValue(
      String value) {
    for (final item in SecurityPolicyAdvancedOptionsConfigJsonParsing2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyAdvancedOptionsConfigJsonParsing2 value: $value');
  }
}
