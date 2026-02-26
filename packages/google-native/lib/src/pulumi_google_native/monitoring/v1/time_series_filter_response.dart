// ignore_for_file: unused_element, unnecessary_cast

import 'aggregation_response.dart';
import 'pick_time_series_filter_response.dart';
import 'statistical_time_series_filter_response.dart';

/// A filter that defines a subset of time series data that is displayed in a widget. Time series data is fetched using the ListTimeSeries (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list) method.
class TimeSeriesFilterResponse {
  /// By default, the raw time series data is returned. Use this field to combine multiple time series for different views of the data.
  final AggregationResponse aggregation;

  /// The monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies the metric types, resources, and projects to query.
  final String filter;

  /// Ranking based time series filter.
  final PickTimeSeriesFilterResponse pickTimeSeriesFilter;

  /// Apply a second aggregation after aggregation is applied.
  final AggregationResponse secondaryAggregation;

  /// Statistics based time series filter. Note: This field is deprecated and completely ignored by the API.
  final StatisticalTimeSeriesFilterResponse statisticalTimeSeriesFilter;

  TimeSeriesFilterResponse({
    required this.aggregation,
    required this.filter,
    required this.pickTimeSeriesFilter,
    required this.secondaryAggregation,
    required this.statisticalTimeSeriesFilter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aggregation'] = aggregation.toMap();
    map['filter'] = filter;
    map['pickTimeSeriesFilter'] = pickTimeSeriesFilter.toMap();
    map['secondaryAggregation'] = secondaryAggregation.toMap();
    map['statisticalTimeSeriesFilter'] = statisticalTimeSeriesFilter.toMap();
    return map;
  }

  factory TimeSeriesFilterResponse.fromMap(Map<String, dynamic> map) {
    return TimeSeriesFilterResponse(
      aggregation: AggregationResponse.fromMap(
          (map['aggregation'] as Map).cast<String, dynamic>()),
      filter: map['filter'] as String,
      pickTimeSeriesFilter: PickTimeSeriesFilterResponse.fromMap(
          (map['pickTimeSeriesFilter'] as Map).cast<String, dynamic>()),
      secondaryAggregation: AggregationResponse.fromMap(
          (map['secondaryAggregation'] as Map).cast<String, dynamic>()),
      statisticalTimeSeriesFilter: StatisticalTimeSeriesFilterResponse.fromMap(
          (map['statisticalTimeSeriesFilter'] as Map).cast<String, dynamic>()),
    );
  }
}
