// ignore_for_file: unused_element, unnecessary_cast


/// The KPI alias.
class KpiAlias {
  /// KPI alias name.
  final String aliasName;
  /// The expression.
  final String expression;

  /// Creates a new [KpiAlias].
  /// [aliasName] KPI alias name.
  /// [expression] The expression.
  KpiAlias({
    required this.aliasName,
    required this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasName': aliasName,
      'expression': expression,
    };
  }

  factory KpiAlias.fromMap(Map<String, dynamic> map) {
    return KpiAlias(
      aliasName: map['aliasName'] as String,
      expression: map['expression'] as String,
    );
  }
}

