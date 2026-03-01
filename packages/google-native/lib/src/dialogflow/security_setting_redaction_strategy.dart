/// Strategy that defines how we do redaction.
enum SecuritySettingRedactionStrategy {
  redactionStrategyUnspecified("REDACTION_STRATEGY_UNSPECIFIED"),
  redactWithService("REDACT_WITH_SERVICE");

  const SecuritySettingRedactionStrategy(this.value);
  final String value;

  static SecuritySettingRedactionStrategy fromValue(String value) {
    for (final item in SecuritySettingRedactionStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SecuritySettingRedactionStrategy value: $value',
    );
  }
}
