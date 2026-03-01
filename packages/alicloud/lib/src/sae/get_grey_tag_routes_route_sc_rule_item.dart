// ignore_for_file: unused_element, unnecessary_cast


class GetGreyTagRoutesRouteScRuleItem {
  /// The comparison operator.
  final String cond;
  /// The name of the parameter.
  final String name;
  /// The operator.
  final String operator;
  /// The Compare types.
  final String type;
  /// The value of the parameter.
  final String value;

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
      cond: map['cond'] as String,
      name: map['name'] as String,
      operator: map['operator'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

