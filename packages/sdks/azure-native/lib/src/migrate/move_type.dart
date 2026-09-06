import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the MoveType.
enum MoveType implements pulumi.PulumiEnum<String> {
  valueRegionToRegion("RegionToRegion"),
  valueRegionToZone("RegionToZone");

  const MoveType(this.wireValue);
  @override
  final String wireValue;

  static MoveType fromValue(String value) {
    for (final item in MoveType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MoveType value: $value');
  }
}
