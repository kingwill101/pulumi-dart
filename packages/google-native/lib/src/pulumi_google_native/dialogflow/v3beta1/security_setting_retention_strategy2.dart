/// Specifies the retention behavior defined by SecuritySettings.RetentionStrategy.
enum SecuritySettingRetentionStrategy2 {
  retentionStrategyUnspecified("RETENTION_STRATEGY_UNSPECIFIED"),
  removeAfterConversation("REMOVE_AFTER_CONVERSATION");

  const SecuritySettingRetentionStrategy2(this.value);
  final String value;

  static SecuritySettingRetentionStrategy2 fromValue(String value) {
    for (final item in SecuritySettingRetentionStrategy2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SecuritySettingRetentionStrategy2 value: $value');
  }
}
