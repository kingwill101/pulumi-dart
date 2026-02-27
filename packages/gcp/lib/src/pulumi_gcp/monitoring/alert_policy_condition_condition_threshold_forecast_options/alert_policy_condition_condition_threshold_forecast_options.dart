// ignore_for_file: unused_element, unnecessary_cast

class AlertPolicyConditionConditionThresholdForecastOptions {
  /// The length of time into the future to forecast
  /// whether a timeseries will violate the threshold.
  /// If the predicted value is found to violate the
  /// threshold, and the violation is observed in all
  /// forecasts made for the Configured `duration`,
  /// then the timeseries is considered to be failing.
  final String forecastHorizon;

  AlertPolicyConditionConditionThresholdForecastOptions({
    required this.forecastHorizon,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['forecastHorizon'] = forecastHorizon;
    return map;
  }

  factory AlertPolicyConditionConditionThresholdForecastOptions.fromMap(
      Map<String, dynamic> map) {
    return AlertPolicyConditionConditionThresholdForecastOptions(
      forecastHorizon: map['forecastHorizon'] as String,
    );
  }
}
