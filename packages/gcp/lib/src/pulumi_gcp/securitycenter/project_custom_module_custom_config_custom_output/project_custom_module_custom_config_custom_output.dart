// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../project_custom_module_custom_config_custom_output_property/project_custom_module_custom_config_custom_output_property.dart';

class ProjectCustomModuleCustomConfigCustomOutput {
  /// A list of custom output properties to add to the finding.
  /// Structure is documented below.
  final List<ProjectCustomModuleCustomConfigCustomOutputProperty>? properties;

  ProjectCustomModuleCustomConfigCustomOutput({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = pulumi.Input.encodeList<
          ProjectCustomModuleCustomConfigCustomOutputProperty,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ProjectCustomModuleCustomConfigCustomOutput.fromMap(
      Map<String, dynamic> map) {
    return ProjectCustomModuleCustomConfigCustomOutput(
      properties: map['properties'] == null
          ? null
          : pulumi.Input.decodeList<
                  ProjectCustomModuleCustomConfigCustomOutputProperty>(
              map['properties'],
              (value) =>
                  ProjectCustomModuleCustomConfigCustomOutputProperty.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
