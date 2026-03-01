/// Type of placement. Can be "PickAll", "PickN" or "PickFixed". Default is PickAll.
enum PlacementType {
  pickAll("PickAll"),
  pickFixed("PickFixed");

  const PlacementType(this.value);
  final String value;

  static PlacementType fromValue(String value) {
    for (final item in PlacementType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PlacementType value: $value');
  }
}

