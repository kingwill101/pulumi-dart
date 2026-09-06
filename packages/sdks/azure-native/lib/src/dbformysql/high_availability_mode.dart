import 'package:pulumi/pulumi.dart' as pulumi;

/// High availability mode for a server.
enum HighAvailabilityMode implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueZoneRedundant("ZoneRedundant"),
  valueSameZone("SameZone");

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
