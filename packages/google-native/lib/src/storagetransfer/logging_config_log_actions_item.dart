enum LoggingConfigLogActionsItem {
  loggableActionUnspecified("LOGGABLE_ACTION_UNSPECIFIED"),
  find("FIND"),
  delete("DELETE"),
  copy("COPY");

  const LoggingConfigLogActionsItem(this.value);
  final String value;

  static LoggingConfigLogActionsItem fromValue(String value) {
    for (final item in LoggingConfigLogActionsItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LoggingConfigLogActionsItem value: $value');
  }
}

