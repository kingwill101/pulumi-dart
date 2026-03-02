// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GreyTagRouteDubboRuleItem {
  final pulumi.Input<String>? cond;
  /// The parameter value gets the expression.
  final pulumi.Input<String>? expr;
  /// The parameter number.
  final pulumi.Input<int>? index;
  final pulumi.Input<String>? operator;
  final pulumi.Input<String>? value;

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
      cond: map['cond'] == null ? null : (map['cond'] as String).input(),
      expr: map['expr'] == null ? null : (map['expr'] as String).input(),
      index: map['index'] == null ? null : (map['index'] as int).input(),
      operator: map['operator'] == null ? null : (map['operator'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

