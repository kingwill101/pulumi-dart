/// Describes operator to be matched
enum RemoteAddressOperator {
  any("Any"),
  iPMatch("IPMatch"),
  geoMatch("GeoMatch");

  const RemoteAddressOperator(this.value);
  final String value;

  static RemoteAddressOperator fromValue(String value) {
    for (final item in RemoteAddressOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RemoteAddressOperator value: $value');
  }
}

