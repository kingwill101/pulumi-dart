// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter.dart';

/// Preview: An identifier for an aggregation function. Aggregation functions are SQL functions that group or transform data from multiple points to a single point. This is a preview feature and may be subject to change before final release.
class AggregationFunction {
  /// Optional. Parameters applied to the aggregation function. Only used for functions that require them.
  final List<Parameter>? parameters;

  /// The type of aggregation function, must be one of the following: "none" - no function. "percentile" - APPROX_QUANTILES() - 1 parameter numeric value "average" - AVG() "count" - COUNT() "count-distinct" - COUNT(DISTINCT) "count-distinct-approx" - APPROX_COUNT_DISTINCT() "max" - MAX() "min" - MIN() "sum" - SUM()
  final String type;

  /// Creates a new [AggregationFunction].
  /// [parameters] Optional. Parameters applied to the aggregation function. Only used for functions that require them.
  /// [type] The type of aggregation function, must be one of the following: "none" - no function. "percentile" - APPROX_QUANTILES() - 1 parameter numeric value "average" - AVG() "count" - COUNT() "count-distinct" - COUNT(DISTINCT) "count-distinct-approx" - APPROX_COUNT_DISTINCT() "max" - MAX() "min" - MIN() "sum" - SUM()
  AggregationFunction({this.parameters, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters == null
          ? null
          : pulumi.Input.encodeList<Parameter, Map<String, dynamic>>(
              parameters!,
              (value) => value.toMap(),
            ),
      'type': type,
    };
  }

  factory AggregationFunction.fromMap(Map<String, dynamic> map) {
    return AggregationFunction(
      parameters: map['parameters'] == null
          ? null
          : pulumi.Input.decodeList<Parameter>(
              map['parameters'],
              (value) =>
                  Parameter.fromMap((value as Map).cast<String, dynamic>()),
            ),
      type: map['type'] as String,
    );
  }
}
