/// Property value
enum PlacementGroupStrategy {
  cLUSTER("CLUSTER"),
  nONE("NONE"),
  pARTITION("PARTITION"),
  sPREAD("SPREAD");

  const PlacementGroupStrategy(this.value);
  final String value;

  static PlacementGroupStrategy fromValue(String value) {
    for (final item in PlacementGroupStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlacementGroupStrategy value: $value');
  }
}

