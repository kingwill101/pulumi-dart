// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_control_rule_cel_expression.dart';

class CloudControlRule {
  /// A [CEL
  /// expression](https://cloud.google.com/certificate-authority-service/docs/using-cel).
  /// Structure is documented below.
  final CloudControlRuleCelExpression? celExpression;

  /// Description of the Rule. The maximum length is 2000 characters.
  final String? description;

  /// The functionality enabled by the Rule.
  final List<String> ruleActionTypes;

  /// Creates a new [CloudControlRule].
  /// [celExpression] A [CEL
  /// [description] Description of the Rule. The maximum length is 2000 characters.
  /// [ruleActionTypes] The functionality enabled by the Rule.
  CloudControlRule({
    this.celExpression,
    this.description,
    required this.ruleActionTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'celExpression': ?celExpression == null ? null : celExpression!.toMap(),
      'description': ?description,
      'ruleActionTypes': ruleActionTypes,
    };
  }

  factory CloudControlRule.fromMap(Map<String, dynamic> map) {
    return CloudControlRule(
      celExpression: map['celExpression'] == null
          ? null
          : CloudControlRuleCelExpression.fromMap(
              (map['celExpression'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      ruleActionTypes: (map['ruleActionTypes'] as List).cast<String>(),
    );
  }
}
