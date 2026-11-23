import 'package:pulumi/pulumi.dart' as pulumi;

enum AvailabilityZoneRebalancing implements pulumi.PulumiEnum<String> {
  eNABLED("ENABLED"),
  dISABLED("DISABLED");

  const AvailabilityZoneRebalancing(this.wireValue);
  @override
  final String wireValue;

  static AvailabilityZoneRebalancing fromValue(String value) {
    for (final item in AvailabilityZoneRebalancing.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AvailabilityZoneRebalancing value: $value');
  }
}
