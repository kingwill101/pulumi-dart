/// Whether the secondary replica should allow all connections, no connections, or only ReadOnly connections.
enum SecondaryAllowConnections {
  valueNO("NO"),
  valueALL("ALL"),
  valueREADONLY("READ_ONLY");

  const SecondaryAllowConnections(this.value);
  final String value;

  static SecondaryAllowConnections fromValue(String value) {
    for (final item in SecondaryAllowConnections.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecondaryAllowConnections value: $value');
  }
}

