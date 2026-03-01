/// Determines how the service should be run. By default, this will be set to Service.
enum LogonType {
  service("Service"),
  interactive("Interactive");

  const LogonType(this.value);
  final String value;

  static LogonType fromValue(String value) {
    for (final item in LogonType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogonType value: $value');
  }
}

