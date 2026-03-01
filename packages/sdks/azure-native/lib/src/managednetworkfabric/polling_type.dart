/// Polling type.
enum PollingType {
  valuePull("Pull"),
  valuePush("Push");

  const PollingType(this.value);
  final String value;

  static PollingType fromValue(String value) {
    for (final item in PollingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PollingType value: $value');
  }
}

