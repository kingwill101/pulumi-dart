// ignore_for_file: unused_element, unnecessary_cast


/// The KPI alias.
class KpiAliasResponse {
  /// KPI alias name.
  final String aliasName;
  /// The expression.
  final String expression;

  /// Creates a new [KpiAliasResponse].
  /// [aliasName] KPI alias name.
  /// [expression] The expression.
  KpiAliasResponse({
    required this.aliasName,
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasName': aliasName,
      'expression': expression,
    };
  }

  factory KpiAliasResponse.fromMap(Map<String, dynamic> map) {
    return KpiAliasResponse(
      aliasName: map['aliasName'] as String,
      expression: map['expression'] as String,
    );
  }
}

