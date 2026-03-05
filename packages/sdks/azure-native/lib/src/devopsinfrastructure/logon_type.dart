/// Determines how the service should be run. By default, this will be set to Service.
enum LogonType {
  service("Service"),
  interactive("Interactive");

  const LogonType(this.wireValue);
  final String wireValue;

  static LogonType fromValue(String value) {
    for (final item in LogonType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogonType value: $value');
  }
}

