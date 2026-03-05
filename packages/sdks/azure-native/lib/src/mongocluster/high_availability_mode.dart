/// The target high availability mode requested for the cluster.
enum HighAvailabilityMode {
  disabled("Disabled"),
  sameZone("SameZone"),
  zoneRedundantPreferred("ZoneRedundantPreferred");

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

