/// LogType enum
enum LogType {
  api("api"),
  audit("audit"),
  authenticator("authenticator"),
  controllerManager("controllerManager"),
  scheduler("scheduler");

  const LogType(this.value);
  final String value;

  static LogType fromValue(String value) {
    for (final item in LogType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogType value: $value');
  }
}

