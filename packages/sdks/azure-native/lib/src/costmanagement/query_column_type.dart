import 'package:pulumi/pulumi.dart' as pulumi;

/// Has type of the column to group.
enum QueryColumnType implements pulumi.PulumiEnum<String> {
  valueTagKey("TagKey"),
  valueDimension("Dimension");

  const QueryColumnType(this.wireValue);
  @override
  final String wireValue;

  static QueryColumnType fromValue(String value) {
    for (final item in QueryColumnType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown QueryColumnType value: $value');
  }
}
