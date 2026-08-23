/// Whether the primary replica should allow all connections or only READ_WRITE connections (disallowing ReadOnly connections)
enum PrimaryAllowConnections {
  valueALL("ALL"),
  valueREADWRITE("READ_WRITE");

  const PrimaryAllowConnections(this.wireValue);
  final String wireValue;

  static PrimaryAllowConnections fromValue(String value) {
    for (final item in PrimaryAllowConnections.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrimaryAllowConnections value: $value');
  }
}
