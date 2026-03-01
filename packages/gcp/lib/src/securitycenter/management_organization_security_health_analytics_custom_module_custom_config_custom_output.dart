// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_organization_security_health_analytics_custom_module_custom_config_custom_output_property.dart';

class ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput {
  /// A list of custom output properties to add to the finding.
  /// Structure is documented below.
  final List<
    ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty
  >?
  properties;

  /// Creates a new [ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput].
  /// [properties] A list of custom output properties to add to the finding.
  ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties == null
          ? null
          : pulumi.Input.encodeList<
              ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty,
              Map<String, dynamic>
            >(properties!, (value) => value.toMap()),
    };
  }

  factory ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput(
      properties: map['properties'] == null
          ? null
          : pulumi.Input.decodeList<
              ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty
            >(
              map['properties'],
              (value) =>
                  ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
