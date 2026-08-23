/// [Required] The numerical prediction drift metric to calculate.
enum NumericalPredictionDriftMetric {
  jensenShannonDistance("JensenShannonDistance"),
  populationStabilityIndex("PopulationStabilityIndex"),
  normalizedWassersteinDistance("NormalizedWassersteinDistance"),
  twoSampleKolmogorovSmirnovTest("TwoSampleKolmogorovSmirnovTest");

  const NumericalPredictionDriftMetric(this.wireValue);
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
