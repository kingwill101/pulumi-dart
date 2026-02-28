// ignore_for_file: unused_element, unnecessary_cast

import 'organization_custom_module_custom_config_custom_output_property_value_expression.dart';

class OrganizationCustomModuleCustomConfigCustomOutputProperty {
  /// Name of the property for the custom output.
  final String? name;

  /// The CEL expression for the custom output. A resource property can be specified
  /// to return the value of the property or a text string enclosed in quotation marks.
  /// Structure is documented below.
  final OrganizationCustomModuleCustomConfigCustomOutputPropertyValueExpression?
      valueExpression;

  /// Creates a new [OrganizationCustomModuleCustomConfigCustomOutputProperty].
  /// [name] Name of the property for the custom output.
  /// [valueExpression] The CEL expression for the custom output. A resource property can be specified
  OrganizationCustomModuleCustomConfigCustomOutputProperty({
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

  factory OrganizationCustomModuleCustomConfigCustomOutputProperty.fromMap(
      Map<String, dynamic> map) {
    return OrganizationCustomModuleCustomConfigCustomOutputProperty(
      name: map['name'] == null ? null : map['name'] as String,
      valueExpression: map['valueExpression'] == null
          ? null
          : OrganizationCustomModuleCustomConfigCustomOutputPropertyValueExpression
              .fromMap((map['valueExpression'] as Map).cast<String, dynamic>()),
    );
  }
}
