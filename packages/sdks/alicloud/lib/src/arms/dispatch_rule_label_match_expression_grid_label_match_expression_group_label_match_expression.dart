// ignore_for_file: unused_element, unnecessary_cast


class DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpression {
  /// The key of the tag of the dispatch rule. Valid values:
  /// * _aliyun_arms_userid: user ID
  /// * _aliyun_arms_involvedObject_kind: type of the associated object
  /// * _aliyun_arms_involvedObject_id: ID of the associated object
  /// * _aliyun_arms_involvedObject_name: name of the associated object
  /// * _aliyun_arms_alert_name: alert name
  /// * _aliyun_arms_alert_rule_id: alert rule ID
  /// * _aliyun_arms_alert_type: alert type
  /// * _aliyun_arms_alert_level: alert severity
  final String key;
  /// The operator used in the dispatch rule. Valid values:
  /// * eq: equals to.
  /// * re: matches a regular expression.
  final String operator;
  /// The value of the tag.
  final String value;

  /// Creates a new [DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpression].
  /// [key] The key of the tag of the dispatch rule. Valid values:
  /// [operator] The operator used in the dispatch rule. Valid values:
  /// [value] The value of the tag.
  DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpression({
    required this.key,
    required this.operator,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'operator': operator,
      'value': value,
    };
  }

  factory DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpression.fromMap(Map<String, dynamic> map) {
    return DispatchRuleLabelMatchExpressionGridLabelMatchExpressionGroupLabelMatchExpression(
      key: map['key'] as String,
      operator: map['operator'] as String,
      value: map['value'] as String,
    );
  }
}

