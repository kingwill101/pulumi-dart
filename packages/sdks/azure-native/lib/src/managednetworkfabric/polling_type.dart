/// Polling type.
enum PollingType {
  valuePull("Pull"),
  valuePush("Push");

  const PollingType(this.wireValue);
  final String wireValue;

  static PollingType fromValue(String value) {
    for (final item in PollingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PollingType value: $value');
  }
}
