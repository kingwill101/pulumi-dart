import 'package:pulumi/pulumi.dart' as pulumi;

/// The datatype for which the indexing behavior is applied to.
enum DataType implements pulumi.PulumiEnum<String> {
  valueString("String"),
  valueNumber("Number"),
  valuePoint("Point"),
  valuePolygon("Polygon"),
  valueLineString("LineString"),
  valueMultiPolygon("MultiPolygon");

  const DataType(this.wireValue);
  @override
  final String wireValue;

  static DataType fromValue(String value) {
    for (final item in DataType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataType value: $value');
  }
}
