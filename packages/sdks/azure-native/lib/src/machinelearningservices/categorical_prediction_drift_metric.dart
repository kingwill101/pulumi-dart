import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] The categorical prediction drift metric to calculate.
enum CategoricalPredictionDriftMetric implements pulumi.PulumiEnum<String> {
  jensenShannonDistance("JensenShannonDistance"),
  populationStabilityIndex("PopulationStabilityIndex"),
  pearsonsChiSquaredTest("PearsonsChiSquaredTest");

  const CategoricalPredictionDriftMetric(this.wireValue);
  @override
  final String wireValue;

  static CategoricalPredictionDriftMetric fromValue(String value) {
    for (final item in CategoricalPredictionDriftMetric.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CategoricalPredictionDriftMetric value: $value');
  }
}
