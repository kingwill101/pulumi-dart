// ignore_for_file: unused_element, unnecessary_cast

/// Metric of the Query
class GoogleCloudApigeeV1SecurityReportQueryMetric {
  /// Aggregation function: avg, min, max, or sum.
  final String? aggregationFunction;

  /// Alias for the metric. Alias will be used to replace metric name in query results.
  final String? alias;

  /// Metric name.
  final String name;

  /// One of `+`, `-`, `/`, `%`, `*`.
  final String? operator;

  /// Operand value should be provided when operator is set.
  final String? value;

  GoogleCloudApigeeV1SecurityReportQueryMetric({
    this.aggregationFunction,
    this.alias,
    required this.name,
    this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregationFunctionValue = aggregationFunction;
    if (aggregationFunctionValue != null) {
      map['aggregationFunction'] = aggregationFunctionValue;
    }
    final aliasValue = alias;
    if (aliasValue != null) {
      map['alias'] = aliasValue;
    }
    map['name'] = name;
    final operatorValue = operator;
    if (operatorValue != null) {
      map['operator'] = operatorValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory GoogleCloudApigeeV1SecurityReportQueryMetric.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1SecurityReportQueryMetric(
      aggregationFunction: map['aggregationFunction'] == null
          ? null
          : map['aggregationFunction'] as String,
      alias: map['alias'] == null ? null : map['alias'] as String,
      name: map['name'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
