// ignore_for_file: unused_element, unnecessary_cast

import '../posture_policy_set_policy_constraint_security_health_analytics_custom_module_config_custom_output_property_value_expression/posture_policy_set_policy_constraint_security_health_analytics_custom_module_config_custom_output_property_value_expression.dart';

class PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperty {
  /// Name of the property for the custom output.
  final String name;

  /// The CEL expression for the custom output. A resource property can be
  /// specified to return the value of the property or a text string enclosed
  /// in quotation marks.
  /// Structure is documented below.
  final PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputPropertyValueExpression?
      valueExpression;

  PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperty({
    required this.name,
    this.valueExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final valueExpressionValue = valueExpression;
    if (valueExpressionValue != null) {
      map['valueExpression'] = valueExpressionValue.toMap();
    }
    return map;
  }

  factory PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperty.fromMap(
      Map<String, dynamic> map) {
    return PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperty(
      name: map['name'] as String,
      valueExpression: map['valueExpression'] == null
          ? null
          : PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputPropertyValueExpression
              .fromMap((map['valueExpression'] as Map).cast<String, dynamic>()),
    );
  }
}
