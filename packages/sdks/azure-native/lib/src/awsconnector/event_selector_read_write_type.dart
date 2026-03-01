/// Specify if you want your trail to log read-only events, write-only events, or all. For example, the EC2 GetConsoleOutput is a read-only API operation and RunInstances is a write-only API operation.
enum EventSelectorReadWriteType {
  all("All"),
  readOnly("ReadOnly"),
  writeOnly("WriteOnly");

  const EventSelectorReadWriteType(this.value);
  final String value;

  static EventSelectorReadWriteType fromValue(String value) {
    for (final item in EventSelectorReadWriteType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EventSelectorReadWriteType value: $value');
  }
}

