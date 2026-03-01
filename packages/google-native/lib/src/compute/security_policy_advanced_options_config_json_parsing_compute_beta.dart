enum SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta {
  disabled("DISABLED"),
  standard("STANDARD"),
  standardWithGraphql("STANDARD_WITH_GRAPHQL");

  const SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta(this.value);
  final String value;

  static SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta fromValue(
    String value,
  ) {
    for (final item
        in SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SecurityPolicyAdvancedOptionsConfigJsonParsingComputeBeta value: $value',
    );
  }
}
