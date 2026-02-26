// ignore_for_file: unused_element, unnecessary_cast

import 'aggregation.dart';
import 'pick_time_series_filter.dart';
import 'ratio_part.dart';
import 'statistical_time_series_filter.dart';

/// A pair of time series filters that define a ratio computation. The output time series is the pair-wise division of each aligned element from the numerator and denominator time series.
class TimeSeriesFilterRatio {
  /// The denominator of the ratio.
  final RatioPart? denominator;

  /// The numerator of the ratio.
  final RatioPart? numerator;

  /// Ranking based time series filter.
  final PickTimeSeriesFilter? pickTimeSeriesFilter;

  /// Apply a second aggregation after the ratio is computed.
  final Aggregation? secondaryAggregation;

  /// Statistics based time series filter. Note: This field is deprecated and completely ignored by the API.
  final StatisticalTimeSeriesFilter? statisticalTimeSeriesFilter;

  TimeSeriesFilterRatio({
    this.denominator,
    this.numerator,
    this.pickTimeSeriesFilter,
    this.secondaryAggregation,
    this.statisticalTimeSeriesFilter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final denominatorValue = denominator;
    if (denominatorValue != null) {
      map['denominator'] = denominatorValue.toMap();
    }
    final numeratorValue = numerator;
    if (numeratorValue != null) {
      map['numerator'] = numeratorValue.toMap();
    }
    final pickTimeSeriesFilterValue = pickTimeSeriesFilter;
    if (pickTimeSeriesFilterValue != null) {
      map['pickTimeSeriesFilter'] = pickTimeSeriesFilterValue.toMap();
    }
    final secondaryAggregationValue = secondaryAggregation;
    if (secondaryAggregationValue != null) {
      map['secondaryAggregation'] = secondaryAggregationValue.toMap();
    }
    final statisticalTimeSeriesFilterValue = statisticalTimeSeriesFilter;
    if (statisticalTimeSeriesFilterValue != null) {
      map['statisticalTimeSeriesFilter'] =
          statisticalTimeSeriesFilterValue.toMap();
    }
    return map;
  }

  factory TimeSeriesFilterRatio.fromMap(Map<String, dynamic> map) {
    return TimeSeriesFilterRatio(
      denominator: map['denominator'] == null
          ? null
          : RatioPart.fromMap(
              (map['denominator'] as Map).cast<String, dynamic>()),
      numerator: map['numerator'] == null
          ? null
          : RatioPart.fromMap(
              (map['numerator'] as Map).cast<String, dynamic>()),
      pickTimeSeriesFilter: map['pickTimeSeriesFilter'] == null
          ? null
          : PickTimeSeriesFilter.fromMap(
              (map['pickTimeSeriesFilter'] as Map).cast<String, dynamic>()),
      secondaryAggregation: map['secondaryAggregation'] == null
          ? null
          : Aggregation.fromMap(
              (map['secondaryAggregation'] as Map).cast<String, dynamic>()),
      statisticalTimeSeriesFilter: map['statisticalTimeSeriesFilter'] == null
          ? null
          : StatisticalTimeSeriesFilter.fromMap(
              (map['statisticalTimeSeriesFilter'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
