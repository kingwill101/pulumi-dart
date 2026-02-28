// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_custom_module_custom_config_custom_output_property.dart';

class OrganizationCustomModuleCustomConfigCustomOutput {
  /// A list of custom output properties to add to the finding.
  /// Structure is documented below.
  final List<OrganizationCustomModuleCustomConfigCustomOutputProperty>?
      properties;

  /// Creates a new [OrganizationCustomModuleCustomConfigCustomOutput].
  /// [properties] A list of custom output properties to add to the finding.
  OrganizationCustomModuleCustomConfigCustomOutput({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = pulumi.Input.encodeList<
          OrganizationCustomModuleCustomConfigCustomOutputProperty,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory OrganizationCustomModuleCustomConfigCustomOutput.fromMap(
      Map<String, dynamic> map) {
    return OrganizationCustomModuleCustomConfigCustomOutput(
      properties: map['properties'] == null
          ? null
          : pulumi.Input.decodeList<
                  OrganizationCustomModuleCustomConfigCustomOutputProperty>(
              map['properties'],
              (value) =>
                  OrganizationCustomModuleCustomConfigCustomOutputProperty
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
