// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GreyTagRouteScRuleItem {
  final pulumi.Input<String>? cond;
  /// The name of the parameter.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? operator;
  /// The compare types. Valid values: `param`, `cookie`, `header`.
  final pulumi.Input<String>? type;
  final pulumi.Input<String>? value;

  /// Creates a new [GreyTagRouteScRuleItem].
  /// [cond] Optional.
  /// [name] The name of the parameter.
  /// [operator] Optional.
  /// [type] The compare types. Valid values: `param`, `cookie`, `header`.
  /// [value] Optional.
  GreyTagRouteScRuleItem({
    this.cond,
    this.name,
    this.operator,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cond': ?cond,
      'name': ?name,
      'operator': ?operator,
      'type': ?type,
      'value': ?value,
    };
  }

  factory GreyTagRouteScRuleItem.fromMap(Map<String, dynamic> map) {
    return GreyTagRouteScRuleItem(
      cond: map['cond'] == null ? null : (map['cond'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      operator: map['operator'] == null ? null : (map['operator'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

