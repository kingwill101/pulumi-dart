// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_folder_security_health_analytics_custom_module_custom_config_custom_output_property.dart';

class ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput {
  /// A list of custom output properties to add to the finding.
  /// Structure is documented below.
  final List<
          ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty>?
      properties;

  /// Creates a new [ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput].
  /// [properties] A list of custom output properties to add to the finding.
  ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = pulumi.Input.encodeList<
          ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput.fromMap(
      Map<String, dynamic> map) {
    return ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutput(
      properties: map['properties'] == null
          ? null
          : pulumi.Input.decodeList<
                  ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty>(
              map['properties'],
              (value) =>
                  ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfigCustomOutputProperty
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
