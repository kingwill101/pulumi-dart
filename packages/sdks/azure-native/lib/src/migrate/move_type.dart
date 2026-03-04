/// Defines the MoveType.
enum MoveType {
  valueRegionToRegion("RegionToRegion"),
  valueRegionToZone("RegionToZone");

  const MoveType(this.wireValue);
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
