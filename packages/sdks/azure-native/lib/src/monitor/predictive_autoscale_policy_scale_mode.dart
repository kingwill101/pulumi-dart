/// the predictive autoscale mode
enum PredictiveAutoscalePolicyScaleMode {
  valueDisabled("Disabled"),
  valueForecastOnly("ForecastOnly"),
  valueEnabled("Enabled");

  const PredictiveAutoscalePolicyScaleMode(this.wireValue);
  final String wireValue;

  static PredictiveAutoscalePolicyScaleMode fromValue(String value) {
    for (final item in PredictiveAutoscalePolicyScaleMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PredictiveAutoscalePolicyScaleMode value: $value',
    );
  }
}
