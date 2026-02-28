// ignore_for_file: unused_element, unnecessary_cast

import 'aggregation.dart';

/// Describes a query to build the numerator or denominator of a TimeSeriesFilterRatio.
class RatioPart {
  /// By default, the raw time series data is returned. Use this field to combine multiple time series for different views of the data.
  final Aggregation? aggregation;

  /// The monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies the metric types, resources, and projects to query.
  final String filter;

  /// Creates a new [RatioPart].
  /// [aggregation] By default, the raw time series data is returned. Use this field to combine multiple time series for different views of the data.
  /// [filter] The monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies the metric types, resources, and projects to query.
  RatioPart({
    this.aggregation,
    required this.filter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregationValue = aggregation;
    if (aggregationValue != null) {
      map['aggregation'] = aggregationValue.toMap();
    }
    map['filter'] = filter;
    return map;
  }

  factory RatioPart.fromMap(Map<String, dynamic> map) {
    return RatioPart(
      aggregation: map['aggregation'] == null
          ? null
          : Aggregation.fromMap(
              (map['aggregation'] as Map).cast<String, dynamic>()),
      filter: map['filter'] as String,
    );
  }
}
