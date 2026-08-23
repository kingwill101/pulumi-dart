/// Determines the balance between cost and performance.
enum PredictionPreference {
  balanced("Balanced"),
  mostCostEffective("MostCostEffective"),
  moreCostEffective("MoreCostEffective"),
  morePerformance("MorePerformance"),
  bestPerformance("BestPerformance");

  const PredictionPreference(this.wireValue);
  final String wireValue;

  static PredictionPreference fromValue(String value) {
    for (final item in PredictionPreference.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PredictionPreference value: $value');
  }
}
