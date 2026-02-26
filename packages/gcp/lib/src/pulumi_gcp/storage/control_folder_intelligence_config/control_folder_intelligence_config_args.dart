// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../control_folder_intelligence_config_filter/control_folder_intelligence_config_filter.dart';

/// The set of arguments for ControlFolderIntelligenceConfig.
class ControlFolderIntelligenceConfigArgs {
  /// Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, TRIAL, DISABLED and STANDARD.
  final Input<String>? editionConfig;

  /// Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// Structure is documented below.
  final Input<ControlFolderIntelligenceConfigFilter>? filter;

  /// Identifier of the GCP Folder. For GCP Folder, this field can be folder number.
  final Input<String>? name;

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
      map['filter'] = Input.mapOptionalInputValue<
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
      editionConfig: Input.asOptionalInput<String>(map['editionConfig']),
      filter: Input.asOptionalInput<ControlFolderIntelligenceConfigFilter>(
          map['filter']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
