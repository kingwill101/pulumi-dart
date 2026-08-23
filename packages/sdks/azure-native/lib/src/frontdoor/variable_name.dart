/// Describes the supported variable for group by
enum VariableName {
  socketAddr("SocketAddr"),
  geoLocation("GeoLocation"),
  none("None");

  const VariableName(this.wireValue);
  final String wireValue;

  static VariableName fromValue(String value) {
    for (final item in VariableName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VariableName value: $value');
  }
}
