// ignore_for_file: unused_element, unnecessary_cast

import 'aggregation_function.dart';

/// Preview: A chart measure for an SQL query. This is applied over the y-axis. This is a preview feature and may be subject to change before final release.
class Measure {
  /// The aggregation function applied to the input column. This must not be set to "none" unless binning is disabled on the dimension. The aggregation function is used to group points on the dimension bins.
  final AggregationFunction aggregationFunction;

  /// The column name within in the dataset used for the measure.
  final String column;

  /// Creates a new [Measure].
  /// [aggregationFunction] The aggregation function applied to the input column. This must not be set to "none" unless binning is disabled on the dimension. The aggregation function is used to group points on the dimension bins.
  /// [column] The column name within in the dataset used for the measure.
  Measure({
    required this.aggregationFunction,
    required this.column,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aggregationFunction'] = aggregationFunction.toMap();
    map['column'] = column;
    return map;
  }

  factory Measure.fromMap(Map<String, dynamic> map) {
    return Measure(
      aggregationFunction: AggregationFunction.fromMap(
          (map['aggregationFunction'] as Map).cast<String, dynamic>()),
      column: map['column'] as String,
    );
  }
}
