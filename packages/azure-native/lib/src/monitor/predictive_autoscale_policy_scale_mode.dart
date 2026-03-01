/// the predictive autoscale mode
enum PredictiveAutoscalePolicyScaleMode {
  valueDisabled("Disabled"),
  valueForecastOnly("ForecastOnly"),
  valueEnabled("Enabled");

  const PredictiveAutoscalePolicyScaleMode(this.value);
  final String value;

  static PredictiveAutoscalePolicyScaleMode fromValue(String value) {
    for (final item in PredictiveAutoscalePolicyScaleMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PredictiveAutoscalePolicyScaleMode value: $value');
  }
}

