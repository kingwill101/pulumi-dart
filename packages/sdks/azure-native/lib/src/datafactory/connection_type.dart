/// Type of connection via linked service or dataset.
enum ConnectionType {
  valueLinkedservicetype("linkedservicetype");

  const ConnectionType(this.wireValue);
  final String wireValue;

  static ConnectionType fromValue(String value) {
    for (final item in ConnectionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectionType value: $value');
  }
}
