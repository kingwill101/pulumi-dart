import 'package:pulumi/pulumi.dart' as pulumi;

/// Workload discovery source.
enum DiscoverySource implements pulumi.PulumiEnum<String> {
  unknown("Unknown"),
  appliance("Appliance"),
  import("Import");

  const DiscoverySource(this.wireValue);
  @override
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
