/// [Required] The categorical data drift metric to calculate.
enum CategoricalDataDriftMetric {
  valueJensenShannonDistance("JensenShannonDistance"),
  valuePopulationStabilityIndex("PopulationStabilityIndex"),
  valuePearsonsChiSquaredTest("PearsonsChiSquaredTest");

  const CategoricalDataDriftMetric(this.wireValue);
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

