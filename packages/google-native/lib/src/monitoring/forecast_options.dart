// ignore_for_file: unused_element, unnecessary_cast

/// Options used when forecasting the time series and testing the predicted value against the threshold.
class ForecastOptions {
  /// The length of time into the future to forecast whether a time series will violate the threshold. If the predicted value is found to violate the threshold, and the violation is observed in all forecasts made for the configured duration, then the time series is considered to be failing. The forecast horizon can range from 1 hour to 60 hours.
  final String forecastHorizon;

  /// Creates a new [ForecastOptions].
  /// [forecastHorizon] The length of time into the future to forecast whether a time series will violate the threshold. If the predicted value is found to violate the threshold, and the violation is observed in all forecasts made for the configured duration, then the time series is considered to be failing. The forecast horizon can range from 1 hour to 60 hours.
  ForecastOptions({
    required this.forecastHorizon,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['forecastHorizon'] = forecastHorizon;
    return map;
  }

  factory ForecastOptions.fromMap(Map<String, dynamic> map) {
    return ForecastOptions(
      forecastHorizon: map['forecastHorizon'] as String,
    );
  }
}
