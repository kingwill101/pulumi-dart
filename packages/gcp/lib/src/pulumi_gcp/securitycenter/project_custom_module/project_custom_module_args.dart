// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../project_custom_module_custom_config/project_custom_module_custom_config.dart';

/// The set of arguments for ProjectCustomModule.
class ProjectCustomModuleArgs {
  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  final Input<ProjectCustomModuleCustomConfig> customConfig;

  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  final Input<String> displayName;

  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final Input<String> enablementState;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  ProjectCustomModuleArgs({
    required this.customConfig,
    required this.displayName,
    required this.enablementState,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customConfig'] = Input.mapInputValue<ProjectCustomModuleCustomConfig,
        Map<String, dynamic>>(customConfig, (value) => value.toMap());
    map['displayName'] = displayName;
    map['enablementState'] = enablementState;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ProjectCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return ProjectCustomModuleArgs(
      customConfig:
          Input.asInput<ProjectCustomModuleCustomConfig>(map['customConfig']),
      displayName: Input.asInput<String>(map['displayName']),
      enablementState: Input.asInput<String>(map['enablementState']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
