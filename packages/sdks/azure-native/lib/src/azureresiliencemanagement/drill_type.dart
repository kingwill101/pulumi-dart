/// The discriminator for the Drill object hierarchy.
enum DrillType {
  zonal("Zonal"),
  regional("Regional");

  const DrillType(this.wireValue);
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
