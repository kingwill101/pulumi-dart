/// Strategy that defines how we do redaction.
enum SecuritySettingRedactionStrategy2 {
  redactionStrategyUnspecified("REDACTION_STRATEGY_UNSPECIFIED"),
  redactWithService("REDACT_WITH_SERVICE");

  const SecuritySettingRedactionStrategy2(this.value);
  final String value;

  static SecuritySettingRedactionStrategy2 fromValue(String value) {
    for (final item in SecuritySettingRedactionStrategy2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecuritySettingRedactionStrategy2 value: $value');
  }
}
