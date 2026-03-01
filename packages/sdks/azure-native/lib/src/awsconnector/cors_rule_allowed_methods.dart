/// CorsRuleAllowedMethods enum
enum CorsRuleAllowedMethods {
  dELETE("DELETE"),
  gET("GET"),
  hEAD("HEAD"),
  pOST("POST"),
  pUT("PUT");

  const CorsRuleAllowedMethods(this.value);
  final String value;

  static CorsRuleAllowedMethods fromValue(String value) {
    for (final item in CorsRuleAllowedMethods.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CorsRuleAllowedMethods value: $value');
  }
}

