// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_forecast_horizon.dart';
import 'auto_seasonality.dart';
import 'auto_target_lags.dart';
import 'auto_target_rolling_window_size.dart';

/// Forecasting specific parameters.
class ForecastingSettings {
  /// Country or region for holidays for forecasting tasks.
  /// These should be ISO 3166 two-letter country/region codes, for example 'US' or 'GB'.
  final pulumi.Input<String>? countryOrRegionForHolidays;
  /// Number of periods between the origin time of one CV fold and the next fold. For
  /// example, if `CVStepSize` = 3 for daily data, the origin time for each fold will be
  /// three days apart.
  final pulumi.Input<int>? cvStepSize;
  /// Flag for generating lags for the numeric features.
  final pulumi.Input<String>? featureLags;
  /// The desired maximum forecast horizon in units of time-series frequency.
  final pulumi.Input<AutoForecastHorizon>? forecastHorizon;
  /// When forecasting, this parameter represents the period with which the forecast is desired, for example daily, weekly, yearly, etc. The forecast frequency is dataset frequency by default.
  final pulumi.Input<String>? frequency;
  /// Set time series seasonality as an integer multiple of the series frequency.
  /// If seasonality is set to 'auto', it will be inferred.
  final pulumi.Input<AutoSeasonality>? seasonality;
  /// The parameter defining how if AutoML should handle short time series.
  final pulumi.Input<String>? shortSeriesHandlingConfig;
  /// Target aggregate function.
  final pulumi.Input<String>? targetAggregateFunction;
  /// The number of past periods to lag from the target column.
  final pulumi.Input<AutoTargetLags>? targetLags;
  /// The number of past periods used to create a rolling window average of the target column.
  final pulumi.Input<AutoTargetRollingWindowSize>? targetRollingWindowSize;
  /// The name of the time column. This parameter is required when forecasting to specify the datetime column in the input data used for building the time series and inferring its frequency.
  final pulumi.Input<String>? timeColumnName;
  /// The names of columns used to group a timeseries. It can be used to create multiple series.
  /// If grain is not defined, the data set is assumed to be one time-series. This parameter is used with task type forecasting.
  final pulumi.Input<List<String>>? timeSeriesIdColumnNames;
  /// Configure STL Decomposition of the time-series target column.
  final pulumi.Input<String>? useStl;

  /// Creates a new [ForecastingSettings].
  /// [countryOrRegionForHolidays] Country or region for holidays for forecasting tasks.
  /// [cvStepSize] Number of periods between the origin time of one CV fold and the next fold. For
  /// [featureLags] Flag for generating lags for the numeric features.
  /// [forecastHorizon] The desired maximum forecast horizon in units of time-series frequency.
  /// [frequency] When forecasting, this parameter represents the period with which the forecast is desired, for example daily, weekly, yearly, etc. The forecast frequency is dataset frequency by default.
  /// [seasonality] Set time series seasonality as an integer multiple of the series frequency.
  /// [shortSeriesHandlingConfig] The parameter defining how if AutoML should handle short time series.
  /// [targetAggregateFunction] Target aggregate function.
  /// [targetLags] The number of past periods to lag from the target column.
  /// [targetRollingWindowSize] The number of past periods used to create a rolling window average of the target column.
  /// [timeColumnName] The name of the time column. This parameter is required when forecasting to specify the datetime column in the input data used for building the time series and inferring its frequency.
  /// [timeSeriesIdColumnNames] The names of columns used to group a timeseries. It can be used to create multiple series.
  /// [useStl] Configure STL Decomposition of the time-series target column.
  const ForecastingSettings({
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
      'forecastHorizon': ?pulumi.Input.mapOptionalInputValue<AutoForecastHorizon, Map<String, dynamic>>(forecastHorizon, (value) => value.toMap()),
      'frequency': ?frequency,
      'seasonality': ?pulumi.Input.mapOptionalInputValue<AutoSeasonality, Map<String, dynamic>>(seasonality, (value) => value.toMap()),
      'shortSeriesHandlingConfig': ?shortSeriesHandlingConfig,
      'targetAggregateFunction': ?targetAggregateFunction,
      'targetLags': ?pulumi.Input.mapOptionalInputValue<AutoTargetLags, Map<String, dynamic>>(targetLags, (value) => value.toMap()),
      'targetRollingWindowSize': ?pulumi.Input.mapOptionalInputValue<AutoTargetRollingWindowSize, Map<String, dynamic>>(targetRollingWindowSize, (value) => value.toMap()),
      'timeColumnName': ?timeColumnName,
      'timeSeriesIdColumnNames': ?timeSeriesIdColumnNames,
      'useStl': ?useStl,
    };
  }

  factory ForecastingSettings.fromMap(Map<String, dynamic> map) {
    return ForecastingSettings(
      countryOrRegionForHolidays: (() { final guardedValue = map['countryOrRegionForHolidays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cvStepSize: (() { final guardedValue = map['cvStepSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      featureLags: (() { final guardedValue = map['featureLags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forecastHorizon: (() { final guardedValue = map['forecastHorizon']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoForecastHorizon.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      seasonality: (() { final guardedValue = map['seasonality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoSeasonality.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      shortSeriesHandlingConfig: (() { final guardedValue = map['shortSeriesHandlingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetAggregateFunction: (() { final guardedValue = map['targetAggregateFunction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetLags: (() { final guardedValue = map['targetLags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoTargetLags.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetRollingWindowSize: (() { final guardedValue = map['targetRollingWindowSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoTargetRollingWindowSize.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeColumnName: (() { final guardedValue = map['timeColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeSeriesIdColumnNames: (() { final guardedValue = map['timeSeriesIdColumnNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      useStl: (() { final guardedValue = map['useStl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
