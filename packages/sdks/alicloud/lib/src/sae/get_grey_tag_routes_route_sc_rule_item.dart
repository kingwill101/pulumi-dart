// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGreyTagRoutesRouteScRuleItem {
  /// The comparison operator.
  final pulumi.Input<String> cond;

  /// The name of the parameter.
  final pulumi.Input<String> name;

  /// The operator.
  final pulumi.Input<String> operator;

  /// The Compare types.
  final pulumi.Input<String> type;

  /// The value of the parameter.
  final pulumi.Input<String> value;

  /// Creates a new [GetGreyTagRoutesRouteScRuleItem].
  /// [cond] The comparison operator.
  /// [name] The name of the parameter.
  /// [operator] The operator.
  /// [type] The Compare types.
  /// [value] The value of the parameter.
  GetGreyTagRoutesRouteScRuleItem({
    required this.cond,
    required this.name,
    required this.operator,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cond': cond,
      'name': name,
      'operator': operator,
      'type': type,
      'value': value,
    };
  }

  factory GetGreyTagRoutesRouteScRuleItem.fromMap(Map<String, dynamic> map) {
    return GetGreyTagRoutesRouteScRuleItem(
      cond: pulumi.Input.fromValue(map['cond'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
