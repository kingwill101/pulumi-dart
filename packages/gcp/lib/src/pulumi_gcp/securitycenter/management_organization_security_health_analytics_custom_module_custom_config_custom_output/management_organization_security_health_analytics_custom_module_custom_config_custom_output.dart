// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../management_organization_security_health_analytics_custom_module_custom_config_custom_output_property/management_organization_security_health_analytics_custom_module_custom_config_custom_output_property.dart';

class ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput {
  /// A list of custom output properties to add to the finding.
  /// Structure is documented below.
  final List<
          ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty>?
      properties;

  ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = Input.encodeList<
          ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput.fromMap(
      Map<String, dynamic> map) {
    return ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput(
      properties: map['properties'] == null
          ? null
          : Input.decodeList<
                  ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty>(
              map['properties'],
              (value) =>
                  ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
