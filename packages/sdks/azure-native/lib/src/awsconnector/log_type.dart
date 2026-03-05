/// LogType enum
enum LogType {
  api("api"),
  audit("audit"),
  authenticator("authenticator"),
  controllerManager("controllerManager"),
  scheduler("scheduler");

  const LogType(this.wireValue);
  final String wireValue;

  static LogType fromValue(String value) {
    for (final item in LogType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogType value: $value');
  }
}

