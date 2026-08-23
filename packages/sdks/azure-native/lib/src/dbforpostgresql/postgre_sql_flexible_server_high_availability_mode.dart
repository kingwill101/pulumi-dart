/// High availability mode for a server.
enum PostgreSqlFlexibleServerHighAvailabilityMode {
  disabled("Disabled"),
  zoneRedundant("ZoneRedundant"),
  sameZone("SameZone");

  const PostgreSqlFlexibleServerHighAvailabilityMode(this.wireValue);
  final String wireValue;

  static PostgreSqlFlexibleServerHighAvailabilityMode fromValue(String value) {
    for (final item in PostgreSqlFlexibleServerHighAvailabilityMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PostgreSqlFlexibleServerHighAvailabilityMode value: $value');
  }
}
