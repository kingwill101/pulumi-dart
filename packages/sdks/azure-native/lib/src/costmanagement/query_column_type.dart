/// Has type of the column to group.
enum QueryColumnType {
  valueTagKey("TagKey"),
  valueDimension("Dimension");

  const QueryColumnType(this.value);
  final String value;

  static QueryColumnType fromValue(String value) {
    for (final item in QueryColumnType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown QueryColumnType value: $value');
  }
}

