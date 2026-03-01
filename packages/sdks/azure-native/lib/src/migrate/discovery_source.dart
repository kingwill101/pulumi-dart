/// Workload discovery source.
enum DiscoverySource {
  unknown("Unknown"),
  appliance("Appliance"),
  import("Import");

  const DiscoverySource(this.value);
  final String value;

  static DiscoverySource fromValue(String value) {
    for (final item in DiscoverySource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiscoverySource value: $value');
  }
}

