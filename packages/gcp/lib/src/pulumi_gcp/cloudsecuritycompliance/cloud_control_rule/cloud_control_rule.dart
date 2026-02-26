// ignore_for_file: unused_element, unnecessary_cast

import '../cloud_control_rule_cel_expression/cloud_control_rule_cel_expression.dart';

class CloudControlRule {
  /// A [CEL
  /// expression](https://cloud.google.com/certificate-authority-service/docs/using-cel).
  /// Structure is documented below.
  final CloudControlRuleCelExpression? celExpression;

  /// Description of the Rule. The maximum length is 2000 characters.
  final String? description;

  /// The functionality enabled by the Rule.
  final List<String> ruleActionTypes;

  CloudControlRule({
    this.celExpression,
    this.description,
    required this.ruleActionTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final celExpressionValue = celExpression;
    if (celExpressionValue != null) {
      map['celExpression'] = celExpressionValue.toMap();
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['ruleActionTypes'] = ruleActionTypes;
    return map;
  }

  factory CloudControlRule.fromMap(Map<String, dynamic> map) {
    return CloudControlRule(
      celExpression: map['celExpression'] == null
          ? null
          : CloudControlRuleCelExpression.fromMap(
              (map['celExpression'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      ruleActionTypes: (map['ruleActionTypes'] as List).cast<String>(),
    );
  }
}
