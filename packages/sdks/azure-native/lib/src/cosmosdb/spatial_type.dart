/// Indicates the spatial type of index.
enum SpatialType {
  valuePoint("Point"),
  valueLineString("LineString"),
  valuePolygon("Polygon"),
  valueMultiPolygon("MultiPolygon");

  const SpatialType(this.wireValue);
  final String wireValue;

  static SpatialType fromValue(String value) {
    for (final item in SpatialType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SpatialType value: $value');
  }
}
