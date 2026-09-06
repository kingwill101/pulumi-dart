// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Forecasting specific parameters.
class ForecastingSettings {
  /// Country or region for holidays for forecasting tasks.
  /// These should be ISO 3166 two-letter country/region codes, for example 'US' or 'GB'.
  final pulumi.Input<String?>? countryOrRegionForHolidays;
  /// Number of periods between the origin time of one CV fold and the next fold. For
  /// example, if `CVStepSize` = 3 for daily data, the origin time for each fold will be
  /// three days apart.
  final pulumi.Input<int?>? cvStepSize;
  /// Flag for generating lags for the numeric features.
  final pulumi.Input<dynamic>? featureLags;
  /// The desired maximum forecast horizon in units of time-series frequency.
  final pulumi.Input<dynamic>? forecastHorizon;
  /// When forecasting, this parameter represents the period with which the forecast is desired, for example daily, weekly, yearly, etc. The forecast frequency is dataset frequency by default.
  final pulumi.Input<String?>? frequency;
  /// Set time series seasonality as an integer multiple of the series frequency.
  /// If seasonality is set to 'auto', it will be inferred.
  final pulumi.Input<dynamic>? seasonality;
  /// The parameter defining how if AutoML should handle short time series.
  final pulumi.Input<dynamic>? shortSeriesHandlingConfig;
  /// Target aggregate function.
  final pulumi.Input<dynamic>? targetAggregateFunction;
  /// The number of past periods to lag from the target column.
  final pulumi.Input<dynamic>? targetLags;
  /// The number of past periods used to create a rolling window average of the target column.
  final pulumi.Input<dynamic>? targetRollingWindowSize;
  /// The name of the time column. This parameter is required when forecasting to specify the datetime column in the input data used for building the time series and inferring its frequency.
  final pulumi.Input<String?>? timeColumnName;
  /// The names of columns used to group a timeseries. It can be used to create multiple series.
  /// If grain is not defined, the data set is assumed to be one time-series. This parameter is used with task type forecasting.
  final pulumi.Input<List<String>?>? timeSeriesIdColumnNames;
  /// Configure STL Decomposition of the time-series target column.
  final pulumi.Input<dynamic>? useStl;

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
  ForecastingSettings({
    this.countryOrRegionForHolidays,
    this.cvStepSize,
    pulumi.Input<dynamic>? featureLags,
    this.forecastHorizon,
    this.frequency,
    this.seasonality,
    pulumi.Input<dynamic>? shortSeriesHandlingConfig,
    pulumi.Input<dynamic>? targetAggregateFunction,
    this.targetLags,
    this.targetRollingWindowSize,
    this.timeColumnName,
    this.timeSeriesIdColumnNames,
    pulumi.Input<dynamic>? useStl,
  }) : featureLags = featureLags ?? pulumi.Input.fromValue('None'), shortSeriesHandlingConfig = shortSeriesHandlingConfig ?? pulumi.Input.fromValue('Auto'), targetAggregateFunction = targetAggregateFunction ?? pulumi.Input.fromValue('None'), useStl = useStl ?? pulumi.Input.fromValue('None');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryOrRegionForHolidays': ?countryOrRegionForHolidays,
      'cvStepSize': ?cvStepSize,
      'featureLags': ?featureLags,
      'forecastHorizon': ?forecastHorizon,
      'frequency': ?frequency,
      'seasonality': ?seasonality,
      'shortSeriesHandlingConfig': ?shortSeriesHandlingConfig,
      'targetAggregateFunction': ?targetAggregateFunction,
      'targetLags': ?targetLags,
      'targetRollingWindowSize': ?targetRollingWindowSize,
      'timeColumnName': ?timeColumnName,
      'timeSeriesIdColumnNames': ?timeSeriesIdColumnNames,
      'useStl': ?useStl,
    };
  }

  factory ForecastingSettings.fromMap(Map<String, dynamic> map) {
    return ForecastingSettings(
      countryOrRegionForHolidays: (() { final guardedValue = map['countryOrRegionForHolidays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cvStepSize: (() { final guardedValue = map['cvStepSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      featureLags: (() { final guardedValue = map['featureLags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      forecastHorizon: (() { final guardedValue = map['forecastHorizon']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      seasonality: (() { final guardedValue = map['seasonality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      shortSeriesHandlingConfig: (() { final guardedValue = map['shortSeriesHandlingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      targetAggregateFunction: (() { final guardedValue = map['targetAggregateFunction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      targetLags: (() { final guardedValue = map['targetLags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      targetRollingWindowSize: (() { final guardedValue = map['targetRollingWindowSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      timeColumnName: (() { final guardedValue = map['timeColumnName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeSeriesIdColumnNames: (() { final guardedValue = map['timeSeriesIdColumnNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      useStl: (() { final guardedValue = map['useStl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
