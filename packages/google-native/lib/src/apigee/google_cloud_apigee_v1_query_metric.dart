// ignore_for_file: unused_element, unnecessary_cast


/// More info about Metric: https://docs.apigee.com/api-platform/analytics/analytics-reference#metrics
class GoogleCloudApigeeV1QueryMetric {
  /// Alias for the metric. Alias will be used to replace metric name in query results.
  final String? alias;
  /// Aggregation function: avg, min, max, or sum.
  final String? function;
  /// Metric name.
  final String name;
  /// One of `+`, `-`, `/`, `%`, `*`.
  final String? operator;
  /// Operand value should be provided when operator is set.
  final String? value;

  /// Creates a new [GoogleCloudApigeeV1QueryMetric].
  /// [alias] Alias for the metric. Alias will be used to replace metric name in query results.
  /// [function] Aggregation function: avg, min, max, or sum.
  /// [name] Metric name.
  /// [operator] One of `+`, `-`, `/`, `%`, `*`.
  /// [value] Operand value should be provided when operator is set.
  GoogleCloudApigeeV1QueryMetric({
    this.alias,
    this.function,
    required this.name,
    this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'function': ?function,
      'name': name,
      'operator': ?operator,
      'value': ?value,
    };
  }

  factory GoogleCloudApigeeV1QueryMetric.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1QueryMetric(
      alias: map['alias'] == null ? null : map['alias'] as String,
      function: map['function'] == null ? null : map['function'] as String,
      name: map['name'] as String,
      operator: map['operator'] == null ? null : map['operator'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

