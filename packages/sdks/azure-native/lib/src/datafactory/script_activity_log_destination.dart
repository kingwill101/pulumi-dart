/// The destination of logs. Type: string.
enum ScriptActivityLogDestination {
  valueActivityOutput("ActivityOutput"),
  valueExternalStore("ExternalStore");

  const ScriptActivityLogDestination(this.wireValue);
  final String wireValue;

  static ScriptActivityLogDestination fromValue(String value) {
    for (final item in ScriptActivityLogDestination.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScriptActivityLogDestination value: $value');
  }
}
