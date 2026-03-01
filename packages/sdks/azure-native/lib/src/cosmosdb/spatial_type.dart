/// Indicates the spatial type of index.
enum SpatialType {
  valuePoint("Point"),
  valueLineString("LineString"),
  valuePolygon("Polygon"),
  valueMultiPolygon("MultiPolygon");

  const SpatialType(this.value);
  final String value;

  static SpatialType fromValue(String value) {
    for (final item in SpatialType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SpatialType value: $value');
  }
}

