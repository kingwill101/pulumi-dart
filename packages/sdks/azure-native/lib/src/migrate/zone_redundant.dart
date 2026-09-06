import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the zone redundant resource setting.
enum ZoneRedundant implements pulumi.PulumiEnum<String> {
  valueEnable("Enable"),
  valueDisable("Disable");

  const ZoneRedundant(this.wireValue);
  @override
  final String wireValue;

  static ZoneRedundant fromValue(String value) {
    for (final item in ZoneRedundant.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ZoneRedundant value: $value');
  }
}
