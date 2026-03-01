/// Specifies the retention behavior defined by SecuritySettings.RetentionStrategy.
enum SecuritySettingRetentionStrategy {
  retentionStrategyUnspecified("RETENTION_STRATEGY_UNSPECIFIED"),
  removeAfterConversation("REMOVE_AFTER_CONVERSATION");

  const SecuritySettingRetentionStrategy(this.value);
  final String value;

  static SecuritySettingRetentionStrategy fromValue(String value) {
    for (final item in SecuritySettingRetentionStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SecuritySettingRetentionStrategy value: $value',
    );
  }
}
