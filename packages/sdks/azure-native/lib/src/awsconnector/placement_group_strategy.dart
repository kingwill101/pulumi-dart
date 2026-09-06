import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum PlacementGroupStrategy implements pulumi.PulumiEnum<String> {
  cLUSTER("CLUSTER"),
  nONE("NONE"),
  pARTITION("PARTITION"),
  sPREAD("SPREAD");

  const PlacementGroupStrategy(this.wireValue);
  @override
  final String wireValue;

  static PlacementGroupStrategy fromValue(String value) {
    for (final item in PlacementGroupStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlacementGroupStrategy value: $value');
  }
}
