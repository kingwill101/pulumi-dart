import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of placement. Can be "PickAll", "PickN" or "PickFixed". Default is PickAll.
enum PlacementType implements pulumi.PulumiEnum<String> {
  pickAll("PickAll"),
  pickFixed("PickFixed");

  const PlacementType(this.wireValue);
  @override
  final String wireValue;

  static PlacementType fromValue(String value) {
    for (final item in PlacementType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlacementType value: $value');
  }
}
