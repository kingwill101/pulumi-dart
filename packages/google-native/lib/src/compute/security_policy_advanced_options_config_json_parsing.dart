enum SecurityPolicyAdvancedOptionsConfigJsonParsing {
  disabled("DISABLED"),
  standard("STANDARD"),
  standardWithGraphql("STANDARD_WITH_GRAPHQL");

  const SecurityPolicyAdvancedOptionsConfigJsonParsing(this.value);
  final String value;

  static SecurityPolicyAdvancedOptionsConfigJsonParsing fromValue(
      String value) {
    for (final item in SecurityPolicyAdvancedOptionsConfigJsonParsing.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecurityPolicyAdvancedOptionsConfigJsonParsing value: $value');
  }
}
