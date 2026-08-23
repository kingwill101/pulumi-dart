/// [Required] The numerical data drift metric to calculate.
enum NumericalDataDriftMetric {
  jensenShannonDistance("JensenShannonDistance"),
  populationStabilityIndex("PopulationStabilityIndex"),
  normalizedWassersteinDistance("NormalizedWassersteinDistance"),
  twoSampleKolmogorovSmirnovTest("TwoSampleKolmogorovSmirnovTest");

  const NumericalDataDriftMetric(this.wireValue);
  final String wireValue;

  static NumericalDataDriftMetric fromValue(String value) {
    for (final item in NumericalDataDriftMetric.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NumericalDataDriftMetric value: $value');
  }
}
