enum SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta {
  normal("NORMAL"),
  verbose("VERBOSE");

  const SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta(this.value);
  final String value;

  static SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta fromValue(
    String value,
  ) {
    for (final item
        in SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SecurityPolicyAdvancedOptionsConfigLogLevelComputeBeta value: $value',
    );
  }
}
