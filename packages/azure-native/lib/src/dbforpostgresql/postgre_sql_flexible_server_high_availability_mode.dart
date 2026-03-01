/// High availability mode for a server.
enum PostgreSqlFlexibleServerHighAvailabilityMode {
  disabled("Disabled"),
  zoneRedundant("ZoneRedundant"),
  sameZone("SameZone");

  const PostgreSqlFlexibleServerHighAvailabilityMode(this.value);
  final String value;

  static PostgreSqlFlexibleServerHighAvailabilityMode fromValue(String value) {
    for (final item in PostgreSqlFlexibleServerHighAvailabilityMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PostgreSqlFlexibleServerHighAvailabilityMode value: $value');
  }
}

