/// Operator for dimension values
enum DimensionOperator {
  valueInclude("Include"),
  valueExclude("Exclude");

  const DimensionOperator(this.wireValue);
  final String wireValue;

  static DimensionOperator fromValue(String value) {
    for (final item in DimensionOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DimensionOperator value: $value');
  }
}
