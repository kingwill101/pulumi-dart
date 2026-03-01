/// [Required] The numerical data quality metric to calculate.
enum NumericalDataQualityMetric {
  valueNullValueRate("NullValueRate"),
  valueDataTypeErrorRate("DataTypeErrorRate"),
  valueOutOfBoundsRate("OutOfBoundsRate");

  const NumericalDataQualityMetric(this.value);
  final String value;

  static NumericalDataQualityMetric fromValue(String value) {
    for (final item in NumericalDataQualityMetric.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NumericalDataQualityMetric value: $value');
  }
}

