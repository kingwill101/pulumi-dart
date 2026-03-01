/// The destination of logs. Type: string.
enum ScriptActivityLogDestination {
  valueActivityOutput("ActivityOutput"),
  valueExternalStore("ExternalStore");

  const ScriptActivityLogDestination(this.value);
  final String value;

  static ScriptActivityLogDestination fromValue(String value) {
    for (final item in ScriptActivityLogDestination.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScriptActivityLogDestination value: $value');
  }
}

