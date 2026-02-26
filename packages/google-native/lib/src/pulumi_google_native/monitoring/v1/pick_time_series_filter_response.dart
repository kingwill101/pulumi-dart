// ignore_for_file: unused_element, unnecessary_cast

/// Describes a ranking-based time series filter. Each input time series is ranked with an aligner. The filter will allow up to num_time_series time series to pass through it, selecting them based on the relative ranking.For example, if ranking_method is METHOD_MEAN,direction is BOTTOM, and num_time_series is 3, then the 3 times series with the lowest mean values will pass through the filter.
class PickTimeSeriesFilterResponse {
  /// How to use the ranking to select time series that pass through the filter.
  final String direction;

  /// How many time series to allow to pass through the filter.
  final int numTimeSeries;

  /// ranking_method is applied to each time series independently to produce the value which will be used to compare the time series to other time series.
  final String rankingMethod;

  PickTimeSeriesFilterResponse({
    required this.direction,
    required this.numTimeSeries,
    required this.rankingMethod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['direction'] = direction;
    map['numTimeSeries'] = numTimeSeries;
    map['rankingMethod'] = rankingMethod;
    return map;
  }

  factory PickTimeSeriesFilterResponse.fromMap(Map<String, dynamic> map) {
    return PickTimeSeriesFilterResponse(
      direction: map['direction'] as String,
      numTimeSeries: map['numTimeSeries'] as int,
      rankingMethod: map['rankingMethod'] as String,
    );
  }
}
