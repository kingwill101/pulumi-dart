// ignore_for_file: unused_element, unnecessary_cast

import 'aggregation_response.dart';
import 'pick_time_series_filter_response.dart';
import 'ratio_part_response.dart';
import 'statistical_time_series_filter_response.dart';

/// A pair of time series filters that define a ratio computation. The output time series is the pair-wise division of each aligned element from the numerator and denominator time series.
class TimeSeriesFilterRatioResponse {
  /// The denominator of the ratio.
  final RatioPartResponse denominator;

  /// The numerator of the ratio.
  final RatioPartResponse numerator;

  /// Ranking based time series filter.
  final PickTimeSeriesFilterResponse pickTimeSeriesFilter;

  /// Apply a second aggregation after the ratio is computed.
  final AggregationResponse secondaryAggregation;

  /// Statistics based time series filter. Note: This field is deprecated and completely ignored by the API.
  final StatisticalTimeSeriesFilterResponse statisticalTimeSeriesFilter;

  TimeSeriesFilterRatioResponse({
    required this.denominator,
    required this.numerator,
    required this.pickTimeSeriesFilter,
    required this.secondaryAggregation,
    required this.statisticalTimeSeriesFilter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['denominator'] = denominator.toMap();
    map['numerator'] = numerator.toMap();
    map['pickTimeSeriesFilter'] = pickTimeSeriesFilter.toMap();
    map['secondaryAggregation'] = secondaryAggregation.toMap();
    map['statisticalTimeSeriesFilter'] = statisticalTimeSeriesFilter.toMap();
    return map;
  }

  factory TimeSeriesFilterRatioResponse.fromMap(Map<String, dynamic> map) {
    return TimeSeriesFilterRatioResponse(
      denominator: RatioPartResponse.fromMap(
          (map['denominator'] as Map).cast<String, dynamic>()),
      numerator: RatioPartResponse.fromMap(
          (map['numerator'] as Map).cast<String, dynamic>()),
      pickTimeSeriesFilter: PickTimeSeriesFilterResponse.fromMap(
          (map['pickTimeSeriesFilter'] as Map).cast<String, dynamic>()),
      secondaryAggregation: AggregationResponse.fromMap(
          (map['secondaryAggregation'] as Map).cast<String, dynamic>()),
      statisticalTimeSeriesFilter: StatisticalTimeSeriesFilterResponse.fromMap(
          (map['statisticalTimeSeriesFilter'] as Map).cast<String, dynamic>()),
    );
  }
}
