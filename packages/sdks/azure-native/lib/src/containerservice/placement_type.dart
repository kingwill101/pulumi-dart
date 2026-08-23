/// Type of placement. Can be "PickAll", "PickN" or "PickFixed". Default is PickAll.
enum PlacementType {
  pickAll("PickAll"),
  pickFixed("PickFixed");

  const PlacementType(this.wireValue);
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
