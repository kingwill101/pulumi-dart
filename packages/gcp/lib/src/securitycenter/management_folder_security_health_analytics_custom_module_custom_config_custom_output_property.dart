// ignore_for_file: unused_element, unnecessary_cast

import 'management_folder_security_health_analytics_custom_module_custom_config_custom_output_property_value_expression.dart';

class ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty {
  /// Name of the property for the custom output.
  final String? name;

  /// The CEL expression for the custom output. A resource property can be specified
  /// to return the value of the property or a text string enclosed in quotation marks.
  /// Structure is documented below.
  final ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertyValueExpression?
  valueExpression;

  /// Creates a new [ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty].
  /// [name] Name of the property for the custom output.
  /// [valueExpression] The CEL expression for the custom output. A resource property can be specified
  ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty({
    this.name,
    this.valueExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'valueExpression': ?valueExpression == null
          ? null
          : valueExpression!.toMap(),
    };
  }

  factory ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty(
      name: map['name'] == null ? null : map['name'] as String,
      valueExpression: map['valueExpression'] == null
          ? null
          : ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputPropertyValueExpression.fromMap(
              (map['valueExpression'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
