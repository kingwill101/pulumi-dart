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

  /// Creates a new [GoogleCloudApigeeV1SecurityReportQueryMetric].
  /// [aggregationFunction] Aggregation function: avg, min, max, or sum.
  /// [alias] Alias for the metric. Alias will be used to replace metric name in query results.
  /// [name] Metric name.
  /// [operator] One of `+`, `-`, `/`, `%`, `*`.
  /// [value] Operand value should be provided when operator is set.
  GoogleCloudApigeeV1SecurityReportQueryMetric({
    this.aggregationFunction,
    this.alias,
    required this.name,
    this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationFunction': ?aggregationFunction,
      'alias': ?alias,
      'name': name,
      'operator': ?operator,
      'value': ?value,
    };
  }

  factory GoogleCloudApigeeV1SecurityReportQueryMetric.fromMap(
    Map<String, dynamic> map,
  ) {
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
