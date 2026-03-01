// ignore_for_file: unused_element, unnecessary_cast


class GetScheduledQueryRulesLogCriteriaDimension {
  /// Specifies the name of the scheduled query rule.
  final String name;
  /// Operator for dimension values.
  final String operator;
  /// List of dimension values.
  final List<String> values;

  /// Creates a new [GetScheduledQueryRulesLogCriteriaDimension].
  /// [name] Specifies the name of the scheduled query rule.
  /// [operator] Operator for dimension values.
  /// [values] List of dimension values.
  GetScheduledQueryRulesLogCriteriaDimension({
    required this.name,
    required this.operator,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'operator': operator,
      'values': values,
    };
  }

  factory GetScheduledQueryRulesLogCriteriaDimension.fromMap(Map<String, dynamic> map) {
    return GetScheduledQueryRulesLogCriteriaDimension(
      name: map['name'] as String,
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

