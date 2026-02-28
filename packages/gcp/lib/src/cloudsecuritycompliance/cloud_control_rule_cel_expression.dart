// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_control_rule_cel_expression_resource_types_values.dart';

class CloudControlRuleCelExpression {
  /// Logic expression in CEL language.
  /// The max length of the condition is 1000 characters.
  final String expression;

  /// A list of strings.
  /// Structure is documented below.
  final CloudControlRuleCelExpressionResourceTypesValues? resourceTypesValues;

  /// Creates a new [CloudControlRuleCelExpression].
  /// [expression] Logic expression in CEL language.
  /// [resourceTypesValues] A list of strings.
  CloudControlRuleCelExpression({
    required this.expression,
    this.resourceTypesValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expression'] = expression;
    final resourceTypesValuesValue = resourceTypesValues;
    if (resourceTypesValuesValue != null) {
      map['resourceTypesValues'] = resourceTypesValuesValue.toMap();
    }
    return map;
  }

  factory CloudControlRuleCelExpression.fromMap(Map<String, dynamic> map) {
    return CloudControlRuleCelExpression(
      expression: map['expression'] as String,
      resourceTypesValues: map['resourceTypesValues'] == null
          ? null
          : CloudControlRuleCelExpressionResourceTypesValues.fromMap(
              (map['resourceTypesValues'] as Map).cast<String, dynamic>()),
    );
  }
}
