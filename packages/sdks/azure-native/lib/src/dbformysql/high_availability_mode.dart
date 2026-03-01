/// High availability mode for a server.
enum HighAvailabilityMode {
  valueDisabled("Disabled"),
  valueZoneRedundant("ZoneRedundant"),
  valueSameZone("SameZone");

  const HighAvailabilityMode(this.value);
  final String value;

  static HighAvailabilityMode fromValue(String value) {
    for (final item in HighAvailabilityMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HighAvailabilityMode value: $value');
  }
}

