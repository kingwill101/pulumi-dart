// ignore_for_file: unused_element, unnecessary_cast

import 'auto_forecast_horizon.dart';
import 'auto_seasonality.dart';
import 'auto_target_lags.dart';
import 'auto_target_rolling_window_size.dart';

/// Forecasting specific parameters.
class ForecastingSettings {
  /// Country or region for holidays for forecasting tasks.
  /// These should be ISO 3166 two-letter country/region codes, for example 'US' or 'GB'.
  final String? countryOrRegionForHolidays;
  /// Number of periods between the origin time of one CV fold and the next fold. For
  /// example, if `CVStepSize` = 3 for daily data, the origin time for each fold will be
  /// three days apart.
  final int? cvStepSize;
  /// Flag for generating lags for the numeric features with 'auto' or null.
  final String? featureLags;
  /// The desired maximum forecast horizon in units of time-series frequency.
  final AutoForecastHorizon? forecastHorizon;
  /// When forecasting, this parameter represents the period with which the forecast is desired, for example daily, weekly, yearly, etc. The forecast frequency is dataset frequency by default.
  final String? frequency;
  /// Set time series seasonality as an integer multiple of the series frequency.
  /// If seasonality is set to 'auto', it will be inferred.
  final AutoSeasonality? seasonality;
  /// The parameter defining how if AutoML should handle short time series.
  final String? shortSeriesHandlingConfig;
  /// The function to be used to aggregate the time series target column to conform to a user specified frequency.
  /// If the TargetAggregateFunction is set i.e. not 'None', but the freq parameter is not set, the error is raised. The possible target aggregation functions are: "sum", "max", "min" and "mean".
  final String? targetAggregateFunction;
  /// The number of past periods to lag from the target column.
  final AutoTargetLags? targetLags;
  /// The number of past periods used to create a rolling window average of the target column.
  final AutoTargetRollingWindowSize? targetRollingWindowSize;
  /// The name of the time column. This parameter is required when forecasting to specify the datetime column in the input data used for building the time series and inferring its frequency.
  final String? timeColumnName;
  /// The names of columns used to group a timeseries. It can be used to create multiple series.
  /// If grain is not defined, the data set is assumed to be one time-series. This parameter is used with task type forecasting.
  final List<String>? timeSeriesIdColumnNames;
  /// Configure STL Decomposition of the time-series target column.
  final String? useStl;

  /// Creates a new [ForecastingSettings].
  /// [countryOrRegionForHolidays] Country or region for holidays for forecasting tasks.
  /// [cvStepSize] Number of periods between the origin time of one CV fold and the next fold. For
  /// [featureLags] Flag for generating lags for the numeric features with 'auto' or null.
  /// [forecastHorizon] The desired maximum forecast horizon in units of time-series frequency.
  /// [frequency] When forecasting, this parameter represents the period with which the forecast is desired, for example daily, weekly, yearly, etc. The forecast frequency is dataset frequency by default.
  /// [seasonality] Set time series seasonality as an integer multiple of the series frequency.
  /// [shortSeriesHandlingConfig] The parameter defining how if AutoML should handle short time series.
  /// [targetAggregateFunction] The function to be used to aggregate the time series target column to conform to a user specified frequency.
  /// [targetLags] The number of past periods to lag from the target column.
  /// [targetRollingWindowSize] The number of past periods used to create a rolling window average of the target column.
  /// [timeColumnName] The name of the time column. This parameter is required when forecasting to specify the datetime column in the input data used for building the time series and inferring its frequency.
  /// [timeSeriesIdColumnNames] The names of columns used to group a timeseries. It can be used to create multiple series.
  /// [useStl] Configure STL Decomposition of the time-series target column.
  ForecastingSettings({
    this.countryOrRegionForHolidays,
    this.cvStepSize,
    this.featureLags,
    this.forecastHorizon,
    this.frequency,
    this.seasonality,
    this.shortSeriesHandlingConfig,
    this.targetAggregateFunction,
    this.targetLags,
    this.targetRollingWindowSize,
    this.timeColumnName,
    this.timeSeriesIdColumnNames,
    this.useStl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryOrRegionForHolidays': ?countryOrRegionForHolidays,
      'cvStepSize': ?cvStepSize,
      'featureLags': ?featureLags,
      'forecastHorizon': ?forecastHorizon == null ? null : forecastHorizon!.toMap(),
      'frequency': ?frequency,
      'seasonality': ?seasonality == null ? null : seasonality!.toMap(),
      'shortSeriesHandlingConfig': ?shortSeriesHandlingConfig,
      'targetAggregateFunction': ?targetAggregateFunction,
      'targetLags': ?targetLags == null ? null : targetLags!.toMap(),
      'targetRollingWindowSize': ?targetRollingWindowSize == null ? null : targetRollingWindowSize!.toMap(),
      'timeColumnName': ?timeColumnName,
      'timeSeriesIdColumnNames': ?timeSeriesIdColumnNames,
      'useStl': ?useStl,
    };
  }

  factory ForecastingSettings.fromMap(Map<String, dynamic> map) {
    return ForecastingSettings(
      countryOrRegionForHolidays: map['countryOrRegionForHolidays'] == null ? null : map['countryOrRegionForHolidays'] as String,
      cvStepSize: map['cvStepSize'] == null ? null : map['cvStepSize'] as int,
      featureLags: map['featureLags'] == null ? null : map['featureLags'] as String,
      forecastHorizon: map['forecastHorizon'] == null ? null : AutoForecastHorizon.fromMap((map['forecastHorizon'] as Map).cast<String, dynamic>()),
      frequency: map['frequency'] == null ? null : map['frequency'] as String,
      seasonality: map['seasonality'] == null ? null : AutoSeasonality.fromMap((map['seasonality'] as Map).cast<String, dynamic>()),
      shortSeriesHandlingConfig: map['shortSeriesHandlingConfig'] == null ? null : map['shortSeriesHandlingConfig'] as String,
      targetAggregateFunction: map['targetAggregateFunction'] == null ? null : map['targetAggregateFunction'] as String,
      targetLags: map['targetLags'] == null ? null : AutoTargetLags.fromMap((map['targetLags'] as Map).cast<String, dynamic>()),
      targetRollingWindowSize: map['targetRollingWindowSize'] == null ? null : AutoTargetRollingWindowSize.fromMap((map['targetRollingWindowSize'] as Map).cast<String, dynamic>()),
      timeColumnName: map['timeColumnName'] == null ? null : map['timeColumnName'] as String,
      timeSeriesIdColumnNames: map['timeSeriesIdColumnNames'] == null ? null : (map['timeSeriesIdColumnNames'] as List).cast<String>(),
      useStl: map['useStl'] == null ? null : map['useStl'] as String,
    );
  }
}

