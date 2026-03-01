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

  /// Creates a new [TimeSeriesFilterRatio].
  /// [denominator] The denominator of the ratio.
  /// [numerator] The numerator of the ratio.
  /// [pickTimeSeriesFilter] Ranking based time series filter.
  /// [secondaryAggregation] Apply a second aggregation after the ratio is computed.
  /// [statisticalTimeSeriesFilter] Statistics based time series filter. Note: This field is deprecated and completely ignored by the API.
  TimeSeriesFilterRatio({
    this.denominator,
    this.numerator,
    this.pickTimeSeriesFilter,
    this.secondaryAggregation,
    this.statisticalTimeSeriesFilter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'denominator': ?denominator == null ? null : denominator!.toMap(),
      'numerator': ?numerator == null ? null : numerator!.toMap(),
      'pickTimeSeriesFilter': ?pickTimeSeriesFilter == null
          ? null
          : pickTimeSeriesFilter!.toMap(),
      'secondaryAggregation': ?secondaryAggregation == null
          ? null
          : secondaryAggregation!.toMap(),
      'statisticalTimeSeriesFilter': ?statisticalTimeSeriesFilter == null
          ? null
          : statisticalTimeSeriesFilter!.toMap(),
    };
  }

  factory TimeSeriesFilterRatio.fromMap(Map<String, dynamic> map) {
    return TimeSeriesFilterRatio(
      denominator: map['denominator'] == null
          ? null
          : RatioPart.fromMap(
              (map['denominator'] as Map).cast<String, dynamic>(),
            ),
      numerator: map['numerator'] == null
          ? null
          : RatioPart.fromMap(
              (map['numerator'] as Map).cast<String, dynamic>(),
            ),
      pickTimeSeriesFilter: map['pickTimeSeriesFilter'] == null
          ? null
          : PickTimeSeriesFilter.fromMap(
              (map['pickTimeSeriesFilter'] as Map).cast<String, dynamic>(),
            ),
      secondaryAggregation: map['secondaryAggregation'] == null
          ? null
          : Aggregation.fromMap(
              (map['secondaryAggregation'] as Map).cast<String, dynamic>(),
            ),
      statisticalTimeSeriesFilter: map['statisticalTimeSeriesFilter'] == null
          ? null
          : StatisticalTimeSeriesFilter.fromMap(
              (map['statisticalTimeSeriesFilter'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
