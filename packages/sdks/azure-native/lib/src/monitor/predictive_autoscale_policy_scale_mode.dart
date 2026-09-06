import 'package:pulumi/pulumi.dart' as pulumi;

/// the predictive autoscale mode
enum PredictiveAutoscalePolicyScaleMode implements pulumi.PulumiEnum<String> {
  valueDisabled("Disabled"),
  valueForecastOnly("ForecastOnly"),
  valueEnabled("Enabled");

  const PredictiveAutoscalePolicyScaleMode(this.wireValue);
  @override
  final String wireValue;

  static PredictiveAutoscalePolicyScaleMode fromValue(String value) {
    for (final item in PredictiveAutoscalePolicyScaleMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PredictiveAutoscalePolicyScaleMode value: $value');
  }
}
