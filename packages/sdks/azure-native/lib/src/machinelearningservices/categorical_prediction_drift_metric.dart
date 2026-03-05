/// [Required] The categorical prediction drift metric to calculate.
enum CategoricalPredictionDriftMetric {
  valueJensenShannonDistance("JensenShannonDistance"),
  valuePopulationStabilityIndex("PopulationStabilityIndex"),
  valuePearsonsChiSquaredTest("PearsonsChiSquaredTest");

  const CategoricalPredictionDriftMetric(this.wireValue);
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

