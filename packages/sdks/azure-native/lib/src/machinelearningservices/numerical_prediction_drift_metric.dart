import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] The numerical prediction drift metric to calculate.
enum NumericalPredictionDriftMetric implements pulumi.PulumiEnum<String> {
  jensenShannonDistance("JensenShannonDistance"),
  populationStabilityIndex("PopulationStabilityIndex"),
  normalizedWassersteinDistance("NormalizedWassersteinDistance"),
  twoSampleKolmogorovSmirnovTest("TwoSampleKolmogorovSmirnovTest");

  const NumericalPredictionDriftMetric(this.wireValue);
  @override
  final String wireValue;

  static NumericalPredictionDriftMetric fromValue(String value) {
    for (final item in NumericalPredictionDriftMetric.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NumericalPredictionDriftMetric value: $value');
  }
}
