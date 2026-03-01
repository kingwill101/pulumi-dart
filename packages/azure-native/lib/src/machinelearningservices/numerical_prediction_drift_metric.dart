/// [Required] The numerical prediction drift metric to calculate.
enum NumericalPredictionDriftMetric {
  valueJensenShannonDistance("JensenShannonDistance"),
  valuePopulationStabilityIndex("PopulationStabilityIndex"),
  valueNormalizedWassersteinDistance("NormalizedWassersteinDistance"),
  valueTwoSampleKolmogorovSmirnovTest("TwoSampleKolmogorovSmirnovTest");

  const NumericalPredictionDriftMetric(this.value);
  final String value;

  static NumericalPredictionDriftMetric fromValue(String value) {
    for (final item in NumericalPredictionDriftMetric.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NumericalPredictionDriftMetric value: $value');
  }
}

