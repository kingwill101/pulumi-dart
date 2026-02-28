// ignore_for_file: unused_element, unnecessary_cast

import 'management_organization_security_health_analytics_custom_module_custom_config_custom_output_property_value_expression.dart';

class ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty {
  /// Name of the property for the custom output.
  final String? name;

  /// The CEL expression for the custom output. A resource property can be specified
  /// to return the value of the property or a text string enclosed in quotation marks.
  /// Structure is documented below.
  final ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertyValueExpression?
      valueExpression;

  /// Creates a new [ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty].
  /// [name] Name of the property for the custom output.
  /// [valueExpression] The CEL expression for the custom output. A resource property can be specified
  ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty({
    this.name,
    this.valueExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final valueExpressionValue = valueExpression;
    if (valueExpressionValue != null) {
      map['valueExpression'] = valueExpressionValue.toMap();
    }
    return map;
  }

  factory ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty.fromMap(
      Map<String, dynamic> map) {
    return ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty(
      name: map['name'] == null ? null : map['name'] as String,
      valueExpression: map['valueExpression'] == null
          ? null
          : ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertyValueExpression
              .fromMap((map['valueExpression'] as Map).cast<String, dynamic>()),
    );
  }
}
