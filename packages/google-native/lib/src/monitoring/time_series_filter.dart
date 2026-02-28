// ignore_for_file: unused_element, unnecessary_cast

import 'aggregation.dart';
import 'pick_time_series_filter.dart';
import 'statistical_time_series_filter.dart';

/// A filter that defines a subset of time series data that is displayed in a widget. Time series data is fetched using the ListTimeSeries (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list) method.
class TimeSeriesFilter {
  /// By default, the raw time series data is returned. Use this field to combine multiple time series for different views of the data.
  final Aggregation? aggregation;

  /// The monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies the metric types, resources, and projects to query.
  final String filter;

  /// Ranking based time series filter.
  final PickTimeSeriesFilter? pickTimeSeriesFilter;

  /// Apply a second aggregation after aggregation is applied.
  final Aggregation? secondaryAggregation;

  /// Statistics based time series filter. Note: This field is deprecated and completely ignored by the API.
  final StatisticalTimeSeriesFilter? statisticalTimeSeriesFilter;

  /// Creates a new [TimeSeriesFilter].
  /// [aggregation] By default, the raw time series data is returned. Use this field to combine multiple time series for different views of the data.
  /// [filter] The monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies the metric types, resources, and projects to query.
  /// [pickTimeSeriesFilter] Ranking based time series filter.
  /// [secondaryAggregation] Apply a second aggregation after aggregation is applied.
  /// [statisticalTimeSeriesFilter] Statistics based time series filter. Note: This field is deprecated and completely ignored by the API.
  TimeSeriesFilter({
    this.aggregation,
    required this.filter,
    this.pickTimeSeriesFilter,
    this.secondaryAggregation,
    this.statisticalTimeSeriesFilter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregationValue = aggregation;
    if (aggregationValue != null) {
      map['aggregation'] = aggregationValue.toMap();
    }
    map['filter'] = filter;
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

  factory TimeSeriesFilter.fromMap(Map<String, dynamic> map) {
    return TimeSeriesFilter(
      aggregation: map['aggregation'] == null
          ? null
          : Aggregation.fromMap(
              (map['aggregation'] as Map).cast<String, dynamic>()),
      filter: map['filter'] as String,
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
