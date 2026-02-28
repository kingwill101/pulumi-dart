enum LoggingConfigLogActionStatesItem {
  loggableActionStateUnspecified("LOGGABLE_ACTION_STATE_UNSPECIFIED"),
  succeeded("SUCCEEDED"),
  failed("FAILED");

  const LoggingConfigLogActionStatesItem(this.value);
  final String value;

  static LoggingConfigLogActionStatesItem fromValue(String value) {
    for (final item in LoggingConfigLogActionStatesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingConfigLogActionStatesItem value: $value');
  }
}

