// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../control_project_intelligence_config_filter/control_project_intelligence_config_filter.dart';

/// The set of arguments for ControlProjectIntelligenceConfig.
class ControlProjectIntelligenceConfigArgs {
  /// Edition configuration of the Storage Intelligence resource. Valid values are INHERIT, TRIAL, DISABLED and STANDARD.
  final Input<String>? editionConfig;

  /// Filter over location and bucket using include or exclude semantics. Resources that match the include or exclude filter are exclusively included or excluded from the Storage Intelligence plan.
  /// Structure is documented below.
  final Input<ControlProjectIntelligenceConfigFilter>? filter;

  /// Identifier of the GCP project. For GCP project, this field can be project name or project number.
  final Input<String>? name;

  ControlProjectIntelligenceConfigArgs({
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
          ControlProjectIntelligenceConfigFilter,
          Map<String, dynamic>>(filterValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory ControlProjectIntelligenceConfigArgs.fromMap(
      Map<String, dynamic> map) {
    return ControlProjectIntelligenceConfigArgs(
      editionConfig: Input.asOptionalInput<String>(map['editionConfig']),
      filter: Input.asOptionalInput<ControlProjectIntelligenceConfigFilter>(
          map['filter']),
      name: Input.asOptionalInput<String>(map['name']),
    );
  }
}
