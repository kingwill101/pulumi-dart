/// Whether the primary replica should allow all connections or only READ_WRITE connections (disallowing ReadOnly connections)
enum PrimaryAllowConnections {
  valueALL("ALL"),
  valueREADWRITE("READ_WRITE");

  const PrimaryAllowConnections(this.value);
  final String value;

  static PrimaryAllowConnections fromValue(String value) {
    for (final item in PrimaryAllowConnections.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PrimaryAllowConnections value: $value');
  }
}

