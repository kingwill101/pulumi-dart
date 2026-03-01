/// The usage indicator.
enum UsageIndicator {
  valueNotSpecified("NotSpecified"),
  valueTest("Test"),
  valueInformation("Information"),
  valueProduction("Production");

  const UsageIndicator(this.value);
  final String value;

  static UsageIndicator fromValue(String value) {
    for (final item in UsageIndicator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown UsageIndicator value: $value');
  }
}

