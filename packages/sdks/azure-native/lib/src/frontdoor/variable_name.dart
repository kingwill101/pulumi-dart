/// Describes the supported variable for group by
enum VariableName {
  valueSocketAddr("SocketAddr"),
  valueGeoLocation("GeoLocation"),
  valueNone("None");

  const VariableName(this.value);
  final String value;

  static VariableName fromValue(String value) {
    for (final item in VariableName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VariableName value: $value');
  }
}

