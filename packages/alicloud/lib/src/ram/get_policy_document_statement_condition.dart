// ignore_for_file: unused_element, unnecessary_cast


class GetPolicyDocumentStatementCondition {
  /// The operator of the condition.
  final String operator;
  /// The values of the condition.
  final List<String> values;
  /// The variable of the condition.
  final String variable;

  /// Creates a new [GetPolicyDocumentStatementCondition].
  /// [operator] The operator of the condition.
  /// [values] The values of the condition.
  /// [variable] The variable of the condition.
  GetPolicyDocumentStatementCondition({
    required this.operator,
    required this.values,
    required this.variable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'values': values,
      'variable': variable,
    };
  }

  factory GetPolicyDocumentStatementCondition.fromMap(Map<String, dynamic> map) {
    return GetPolicyDocumentStatementCondition(
      operator: map['operator'] as String,
      values: (map['values'] as List).cast<String>(),
      variable: map['variable'] as String,
    );
  }
}

