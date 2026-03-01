// ignore_for_file: unused_element, unnecessary_cast

import 'aggregation_response.dart';

/// Describes a query to build the numerator or denominator of a TimeSeriesFilterRatio.
class RatioPartResponse {
  /// By default, the raw time series data is returned. Use this field to combine multiple time series for different views of the data.
  final AggregationResponse aggregation;

  /// The monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies the metric types, resources, and projects to query.
  final String filter;

  /// Creates a new [RatioPartResponse].
  /// [aggregation] By default, the raw time series data is returned. Use this field to combine multiple time series for different views of the data.
  /// [filter] The monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies the metric types, resources, and projects to query.
  RatioPartResponse({required this.aggregation, required this.filter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregation': aggregation.toMap(),
      'filter': filter,
    };
  }

  factory RatioPartResponse.fromMap(Map<String, dynamic> map) {
    return RatioPartResponse(
      aggregation: AggregationResponse.fromMap(
        (map['aggregation'] as Map).cast<String, dynamic>(),
      ),
      filter: map['filter'] as String,
    );
  }
}
