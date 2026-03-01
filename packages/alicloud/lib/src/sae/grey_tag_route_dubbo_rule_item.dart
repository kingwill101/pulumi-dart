// ignore_for_file: unused_element, unnecessary_cast


class GreyTagRouteDubboRuleItem {
  final String? cond;
  /// The parameter value gets the expression.
  final String? expr;
  /// The parameter number.
  final int? index;
  final String? operator;
  final String? value;

  /// Creates a new [GreyTagRouteDubboRuleItem].
  /// [cond] Optional.
  /// [expr] The parameter value gets the expression.
  /// [index] The parameter number.
  /// [operator] Optional.
  /// [value] Optional.
  GreyTagRouteDubboRuleItem({
    this.cond,
    this.expr,
    this.index,
    this.operator,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cond': ?cond,
      'expr': ?expr,
      'index': ?index,
      'operator': ?operator,
      'value': ?value,
    };
  }

  factory GreyTagRouteDubboRuleItem.fromMap(Map<String, dynamic> map) {
    return GreyTagRouteDubboRuleItem(
      cond: map['cond'] == null ? null : map['cond'] as String,
      expr: map['expr'] == null ? null : map['expr'] as String,
      index: map['index'] == null ? null : map['index'] as int,
      operator: map['operator'] == null ? null : map['operator'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

