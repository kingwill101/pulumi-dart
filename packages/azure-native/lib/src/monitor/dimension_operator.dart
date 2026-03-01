/// Operator for dimension values
enum DimensionOperator {
  valueInclude("Include"),
  valueExclude("Exclude");

  const DimensionOperator(this.value);
  final String value;

  static DimensionOperator fromValue(String value) {
    for (final item in DimensionOperator.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DimensionOperator value: $value');
  }
}

