/// Describes operator to be matched
enum RemoteAddressOperator {
  any("Any"),
  iPMatch("IPMatch"),
  geoMatch("GeoMatch");

  const RemoteAddressOperator(this.wireValue);
  final String wireValue;

  static RemoteAddressOperator fromValue(String value) {
    for (final item in RemoteAddressOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RemoteAddressOperator value: $value');
  }
}

