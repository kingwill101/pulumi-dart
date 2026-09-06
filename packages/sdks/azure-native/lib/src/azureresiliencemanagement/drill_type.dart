import 'package:pulumi/pulumi.dart' as pulumi;

/// The discriminator for the Drill object hierarchy.
enum DrillType implements pulumi.PulumiEnum<String> {
  zonal("Zonal"),
  regional("Regional");

  const DrillType(this.wireValue);
  @override
  final String wireValue;

  static DrillType fromValue(String value) {
    for (final item in DrillType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DrillType value: $value');
  }
}
