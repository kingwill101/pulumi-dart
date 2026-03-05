/// [Required] The categorical data quality metric to calculate.
enum CategoricalDataQualityMetric {
  valueNullValueRate("NullValueRate"),
  valueDataTypeErrorRate("DataTypeErrorRate"),
  valueOutOfBoundsRate("OutOfBoundsRate");

  const CategoricalDataQualityMetric(this.wireValue);
  final String wireValue;

  static CategoricalDataQualityMetric fromValue(String value) {
    for (final item in CategoricalDataQualityMetric.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CategoricalDataQualityMetric value: $value');
  }
}

