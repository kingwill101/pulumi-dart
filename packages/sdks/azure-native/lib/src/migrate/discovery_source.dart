/// Workload discovery source.
enum DiscoverySource {
  unknown("Unknown"),
  appliance("Appliance"),
  import("Import");

  const DiscoverySource(this.wireValue);
  final String wireValue;

  static DiscoverySource fromValue(String value) {
    for (final item in DiscoverySource.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoverySource value: $value');
  }
}
