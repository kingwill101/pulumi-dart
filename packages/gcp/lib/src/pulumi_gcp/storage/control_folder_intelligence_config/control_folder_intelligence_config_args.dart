// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../control_folder_intelligence_config_filter/control_folder_intelligence_config_filter.dart';

/// The set of arguments for ControlFolderIntelligenceConfig.
class ControlFolderIntelligenceConfigArgs {
  /// Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, TRIAL, DISABLED and STANDARD.
  final pulumi.Input<String>? editionConfig;

  /// Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// Structure is documented below.
  final pulumi.Input<ControlFolderIntelligenceConfigFilter>? filter;

  /// Identifier of the GCP Folder. For GCP Folder, this field can be folder number.
  final pulumi.Input<String>? name;

  ControlFolderIntelligenceConfigArgs({
    this.editionConfig,
    this.filter,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final editionConfigValue = editionConfig;
    if (editionConfigValue != null) {
      map['editionConfig'] = editionConfigValue;
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = pulumi.Input.mapOptionalInputValue<
          ControlFolderIntelligenceConfigFilter,
          Map<String, dynamic>>(filterValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory ControlFolderIntelligenceConfigArgs.fromMap(
      Map<String, dynamic> map) {
    return ControlFolderIntelligenceConfigArgs(
      editionConfig: pulumi.Input.asOptionalInput<String>(map['editionConfig']),
      filter:
          pulumi.Input.asOptionalInput<ControlFolderIntelligenceConfigFilter>(
              map['filter']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}
