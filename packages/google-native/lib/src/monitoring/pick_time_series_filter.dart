// ignore_for_file: unused_element, unnecessary_cast

import 'pick_time_series_filter_direction.dart';
import 'pick_time_series_filter_ranking_method.dart';

/// Describes a ranking-based time series filter. Each input time series is ranked with an aligner. The filter will allow up to num_time_series time series to pass through it, selecting them based on the relative ranking.For example, if ranking_method is METHOD_MEAN,direction is BOTTOM, and num_time_series is 3, then the 3 times series with the lowest mean values will pass through the filter.
class PickTimeSeriesFilter {
  /// How to use the ranking to select time series that pass through the filter.
  final PickTimeSeriesFilterDirection? direction;

  /// How many time series to allow to pass through the filter.
  final int? numTimeSeries;

  /// ranking_method is applied to each time series independently to produce the value which will be used to compare the time series to other time series.
  final PickTimeSeriesFilterRankingMethod? rankingMethod;

  /// Creates a new [PickTimeSeriesFilter].
  /// [direction] How to use the ranking to select time series that pass through the filter.
  /// [numTimeSeries] How many time series to allow to pass through the filter.
  /// [rankingMethod] ranking_method is applied to each time series independently to produce the value which will be used to compare the time series to other time series.
  PickTimeSeriesFilter({
    this.direction,
    this.numTimeSeries,
    this.rankingMethod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final directionValue = direction;
    if (directionValue != null) {
      map['direction'] = directionValue.value;
    }
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

  factory PickTimeSeriesFilter.fromMap(Map<String, dynamic> map) {
    return PickTimeSeriesFilter(
      direction: map['direction'] == null
          ? null
          : PickTimeSeriesFilterDirection.fromValue(map['direction'] as String),
      numTimeSeries:
          map['numTimeSeries'] == null ? null : map['numTimeSeries'] as int,
      rankingMethod: map['rankingMethod'] == null
          ? null
          : PickTimeSeriesFilterRankingMethod.fromValue(
              map['rankingMethod'] as String),
    );
  }
}
