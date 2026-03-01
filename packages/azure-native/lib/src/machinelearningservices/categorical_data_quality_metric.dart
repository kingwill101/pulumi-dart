/// [Required] The categorical data quality metric to calculate.
enum CategoricalDataQualityMetric {
  valueNullValueRate("NullValueRate"),
  valueDataTypeErrorRate("DataTypeErrorRate"),
  valueOutOfBoundsRate("OutOfBoundsRate");

  const CategoricalDataQualityMetric(this.value);
  final String value;

  static CategoricalDataQualityMetric fromValue(String value) {
    for (final item in CategoricalDataQualityMetric.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CategoricalDataQualityMetric value: $value');
  }
}

