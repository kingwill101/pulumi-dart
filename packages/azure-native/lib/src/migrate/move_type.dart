/// Defines the MoveType.
enum MoveType {
  valueRegionToRegion("RegionToRegion"),
  valueRegionToZone("RegionToZone");

  const MoveType(this.value);
  final String value;

  static MoveType fromValue(String value) {
    for (final item in MoveType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MoveType value: $value');
  }
}

