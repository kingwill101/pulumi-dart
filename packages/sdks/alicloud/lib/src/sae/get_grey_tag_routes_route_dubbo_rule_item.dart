// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGreyTagRoutesRouteDubboRuleItem {
  /// The comparison operator.
  final pulumi.Input<String> cond;
  /// The parameter value gets the expression.
  final pulumi.Input<String> expr;
  /// The parameter number.
  final pulumi.Input<int> index;
  /// The operator.
  final pulumi.Input<String> operator;
  /// The value of the parameter.
  final pulumi.Input<String> value;

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
      cond: (map['cond'] as String).input(),
      expr: (map['expr'] as String).input(),
      index: (map['index'] as int).input(),
      operator: (map['operator'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

