/// High availability mode for a server.
enum HighAvailabilityMode {
  valueDisabled("Disabled"),
  valueZoneRedundant("ZoneRedundant"),
  valueSameZone("SameZone");

  const HighAvailabilityMode(this.wireValue);
  final String wireValue;

  static HighAvailabilityMode fromValue(String value) {
    for (final item in HighAvailabilityMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HighAvailabilityMode value: $value');
  }
}

