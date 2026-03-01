/// The target high availability mode requested for the cluster.
enum HighAvailabilityMode {
  disabled("Disabled"),
  sameZone("SameZone"),
  zoneRedundantPreferred("ZoneRedundantPreferred");

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

