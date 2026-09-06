import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] The categorical data drift metric to calculate.
enum CategoricalDataDriftMetric implements pulumi.PulumiEnum<String> {
  jensenShannonDistance("JensenShannonDistance"),
  populationStabilityIndex("PopulationStabilityIndex"),
  pearsonsChiSquaredTest("PearsonsChiSquaredTest");

  const CategoricalDataDriftMetric(this.wireValue);
  @override
  final String wireValue;

  static CategoricalDataDriftMetric fromValue(String value) {
    for (final item in CategoricalDataDriftMetric.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CategoricalDataDriftMetric value: $value');
  }
}
