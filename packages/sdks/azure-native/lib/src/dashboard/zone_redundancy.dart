import 'package:pulumi/pulumi.dart' as pulumi;

/// The zone redundancy setting of the Grafana instance.
enum ZoneRedundancy implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueEnabled("Enabled");

  const ZoneRedundancy(this.wireValue);
  @override
  final String wireValue;

  static ZoneRedundancy fromValue(String value) {
    for (final item in ZoneRedundancy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZoneRedundancy value: $value');
  }
}
