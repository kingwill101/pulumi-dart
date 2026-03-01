// ignore_for_file: unused_element, unnecessary_cast


class DiJobTableMappingSourceObjectSelectionRule {
  final String? action;
  /// Expression, such as mysql_table_1
  final String? expression;
  /// Expression type, value range: Exact/Regex
  final String? expressionType;
  /// Object type, optional enumeration value:
  ///
  /// Table (Table)
  ///
  /// Database
  final String? objectType;

  /// Creates a new [DiJobTableMappingSourceObjectSelectionRule].
  /// [action] Optional.
  /// [expression] Expression, such as mysql_table_1
  /// [expressionType] Expression type, value range: Exact/Regex
  /// [objectType] Object type, optional enumeration value:
  DiJobTableMappingSourceObjectSelectionRule({
    this.action,
    this.expression,
    this.expressionType,
    this.objectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'expression': ?expression,
      'expressionType': ?expressionType,
      'objectType': ?objectType,
    };
  }

  factory DiJobTableMappingSourceObjectSelectionRule.fromMap(Map<String, dynamic> map) {
    return DiJobTableMappingSourceObjectSelectionRule(
      action: map['action'] == null ? null : map['action'] as String,
      expression: map['expression'] == null ? null : map['expression'] as String,
      expressionType: map['expressionType'] == null ? null : map['expressionType'] as String,
      objectType: map['objectType'] == null ? null : map['objectType'] as String,
    );
  }
}

