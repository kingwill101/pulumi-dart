// ignore_for_file: unused_element, unnecessary_cast


class GetGreyTagRoutesRouteDubboRuleItem {
  /// The comparison operator.
  final String cond;
  /// The parameter value gets the expression.
  final String expr;
  /// The parameter number.
  final int index;
  /// The operator.
  final String operator;
  /// The value of the parameter.
  final String value;

  /// Creates a new [GetGreyTagRoutesRouteDubboRuleItem].
  /// [cond] The comparison operator.
  /// [expr] The parameter value gets the expression.
  /// [index] The parameter number.
  /// [operator] The operator.
  /// [value] The value of the parameter.
  GetGreyTagRoutesRouteDubboRuleItem({
    required this.cond,
    required this.expr,
    required this.index,
    required this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cond': cond,
      'expr': expr,
      'index': index,
      'operator': operator,
      'value': value,
    };
  }

  factory GetGreyTagRoutesRouteDubboRuleItem.fromMap(Map<String, dynamic> map) {
    return GetGreyTagRoutesRouteDubboRuleItem(
      cond: map['cond'] as String,
      expr: map['expr'] as String,
      index: map['index'] as int,
      operator: map['operator'] as String,
      value: map['value'] as String,
    );
  }
}

