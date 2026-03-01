/// Type of connection via linked service or dataset.
enum ConnectionType {
  valueLinkedservicetype("linkedservicetype");

  const ConnectionType(this.value);
  final String value;

  static ConnectionType fromValue(String value) {
    for (final item in ConnectionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionType value: $value');
  }
}

