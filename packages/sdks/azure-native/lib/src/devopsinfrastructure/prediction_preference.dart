/// Determines the balance between cost and performance.
enum PredictionPreference {
  balanced("Balanced"),
  mostCostEffective("MostCostEffective"),
  moreCostEffective("MoreCostEffective"),
  morePerformance("MorePerformance"),
  bestPerformance("BestPerformance");

  const PredictionPreference(this.value);
  final String value;

  static PredictionPreference fromValue(String value) {
    for (final item in PredictionPreference.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PredictionPreference value: $value');
  }
}

