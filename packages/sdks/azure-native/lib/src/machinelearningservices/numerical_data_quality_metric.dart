import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] The numerical data quality metric to calculate.
enum NumericalDataQualityMetric implements pulumi.PulumiEnum<String> {
  nullValueRate("NullValueRate"),
  dataTypeErrorRate("DataTypeErrorRate"),
  outOfBoundsRate("OutOfBoundsRate");

  const NumericalDataQualityMetric(this.wireValue);
  @override
  final String wireValue;

  static NumericalDataQualityMetric fromValue(String value) {
    for (final item in NumericalDataQualityMetric.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NumericalDataQualityMetric value: $value');
  }
}
