// ignore_for_file: unused_element, unnecessary_cast

import 'statistical_time_series_filter_ranking_method.dart';

/// A filter that ranks streams based on their statistical relation to other streams in a request. Note: This field is deprecated and completely ignored by the API.
class StatisticalTimeSeriesFilter {
  /// How many time series to output.
  final int? numTimeSeries;

  /// rankingMethod is applied to a set of time series, and then the produced value for each individual time series is used to compare a given time series to others. These are methods that cannot be applied stream-by-stream, but rather require the full context of a request to evaluate time series.
  final StatisticalTimeSeriesFilterRankingMethod? rankingMethod;

  StatisticalTimeSeriesFilter({
    this.numTimeSeries,
    this.rankingMethod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final numTimeSeriesValue = numTimeSeries;
    if (numTimeSeriesValue != null) {
      map['numTimeSeries'] = numTimeSeriesValue;
    }
    final rankingMethodValue = rankingMethod;
    if (rankingMethodValue != null) {
      map['rankingMethod'] = rankingMethodValue.value;
    }
    return map;
  }

  factory StatisticalTimeSeriesFilter.fromMap(Map<String, dynamic> map) {
    return StatisticalTimeSeriesFilter(
      numTimeSeries:
          map['numTimeSeries'] == null ? null : map['numTimeSeries'] as int,
      rankingMethod: map['rankingMethod'] == null
          ? null
          : StatisticalTimeSeriesFilterRankingMethod.fromValue(
              map['rankingMethod'] as String),
    );
  }
}
