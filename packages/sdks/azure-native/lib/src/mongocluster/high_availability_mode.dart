import 'package:pulumi/pulumi.dart' as pulumi;

/// The target high availability mode requested for the cluster.
enum HighAvailabilityMode implements pulumi.PulumiEnum<String> {
  disabled("Disabled"),
  sameZone("SameZone"),
  zoneRedundantPreferred("ZoneRedundantPreferred");

  const HighAvailabilityMode(this.wireValue);
  @override
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
