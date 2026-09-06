import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] The categorical data quality metric to calculate.
enum CategoricalDataQualityMetric implements pulumi.PulumiEnum<String> {
  nullValueRate("NullValueRate"),
  dataTypeErrorRate("DataTypeErrorRate"),
  outOfBoundsRate("OutOfBoundsRate");

  const CategoricalDataQualityMetric(this.wireValue);
  @override
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
