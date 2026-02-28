// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_custom_module_custom_config_custom_output_property.dart';

class FolderCustomModuleCustomConfigCustomOutput {
  /// A list of custom output properties to add to the finding.
  /// Structure is documented below.
  final List<FolderCustomModuleCustomConfigCustomOutputProperty>? properties;

  /// Creates a new [FolderCustomModuleCustomConfigCustomOutput].
  /// [properties] A list of custom output properties to add to the finding.
  FolderCustomModuleCustomConfigCustomOutput({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = pulumi.Input.encodeList<
          FolderCustomModuleCustomConfigCustomOutputProperty,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory FolderCustomModuleCustomConfigCustomOutput.fromMap(
      Map<String, dynamic> map) {
    return FolderCustomModuleCustomConfigCustomOutput(
      properties: map['properties'] == null
          ? null
          : pulumi.Input.decodeList<
                  FolderCustomModuleCustomConfigCustomOutputProperty>(
              map['properties'],
              (value) =>
                  FolderCustomModuleCustomConfigCustomOutputProperty.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
