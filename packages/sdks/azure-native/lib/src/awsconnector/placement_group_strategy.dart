/// Property value
enum PlacementGroupStrategy {
  cLUSTER("CLUSTER"),
  nONE("NONE"),
  pARTITION("PARTITION"),
  sPREAD("SPREAD");

  const PlacementGroupStrategy(this.wireValue);
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

