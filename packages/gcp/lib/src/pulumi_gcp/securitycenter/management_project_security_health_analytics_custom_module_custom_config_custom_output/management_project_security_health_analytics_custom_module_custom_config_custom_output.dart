// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../management_project_security_health_analytics_custom_module_custom_config_custom_output_property/management_project_security_health_analytics_custom_module_custom_config_custom_output_property.dart';

class ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput {
  /// A list of custom output properties to add to the finding.
  /// Structure is documented below.
  final List<
          ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty>?
      properties;

  ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = Input.encodeList<
          ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput.fromMap(
      Map<String, dynamic> map) {
    return ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput(
      properties: map['properties'] == null
          ? null
          : Input.decodeList<
                  ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty>(
              map['properties'],
              (value) =>
                  ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
