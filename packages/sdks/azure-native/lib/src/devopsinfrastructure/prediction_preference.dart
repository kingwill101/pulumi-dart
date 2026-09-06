import 'package:pulumi/pulumi.dart' as pulumi;

/// Determines the balance between cost and performance.
enum PredictionPreference implements pulumi.PulumiEnum<String> {
  balanced("Balanced"),
  mostCostEffective("MostCostEffective"),
  moreCostEffective("MoreCostEffective"),
  morePerformance("MorePerformance"),
  bestPerformance("BestPerformance");

  const PredictionPreference(this.wireValue);
  @override
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
