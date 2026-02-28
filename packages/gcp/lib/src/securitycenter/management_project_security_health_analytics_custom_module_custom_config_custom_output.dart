// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_project_security_health_analytics_custom_module_custom_config_custom_output_property.dart';

class ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput {
  /// A list of custom output properties to add to the finding.
  /// Structure is documented below.
  final List<ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty>? properties;

  /// Creates a new [ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput].
  /// [properties] A list of custom output properties to add to the finding.
  ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties == null ? null : pulumi.Input.encodeList<ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty, Map<String, dynamic>>(properties!, (value) => value.toMap()),
    };
  }

  factory ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput.fromMap(Map<String, dynamic> map) {
    return ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput(
      properties: map['properties'] == null ? null : pulumi.Input.decodeList<ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty>(map['properties'], (value) => ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

