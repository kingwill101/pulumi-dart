// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'parameter.dart';

/// Preview: An identifier for an aggregation function. Aggregation functions are SQL functions that group or transform data from multiple points to a single point. This is a preview feature and may be subject to change before final release.
class AggregationFunction {
  /// Optional. Parameters applied to the aggregation function. Only used for functions that require them.
  final List<Parameter>? parameters;

  /// The type of aggregation function, must be one of the following: "none" - no function. "percentile" - APPROX_QUANTILES() - 1 parameter numeric value "average" - AVG() "count" - COUNT() "count-distinct" - COUNT(DISTINCT) "count-distinct-approx" - APPROX_COUNT_DISTINCT() "max" - MAX() "min" - MIN() "sum" - SUM()
  final String type;

  AggregationFunction({
    this.parameters,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = Input.encodeList<Parameter, Map<String, dynamic>>(
          parametersValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory AggregationFunction.fromMap(Map<String, dynamic> map) {
    return AggregationFunction(
      parameters: map['parameters'] == null
          ? null
          : Input.decodeList<Parameter>(
              map['parameters'],
              (value) =>
                  Parameter.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
