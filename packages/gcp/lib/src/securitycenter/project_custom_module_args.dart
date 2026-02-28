// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_custom_module_custom_config.dart';

/// {@template pulumi_securitycenter_project_custom_module_project_custom_module_args_doc}
/// The set of arguments for ProjectCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_project_custom_module_project_custom_module_args_doc}
class ProjectCustomModuleArgs {
  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  final pulumi.Input<ProjectCustomModuleCustomConfig> customConfig;

  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  final pulumi.Input<String> displayName;

  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> enablementState;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [ProjectCustomModuleArgs].
  /// [customConfig] The user specified custom configuration for the module.
  /// [displayName] The display name of the Security Health Analytics custom module. This
  /// [enablementState] The enablement state of the custom module.
  /// [project] The ID of the project in which the resource belongs.
  ProjectCustomModuleArgs({
    required ProjectCustomModuleCustomConfig customConfig,
    required String displayName,
    required String enablementState,
    String? project,
  })  : customConfig =
            pulumi.Input.asInput<ProjectCustomModuleCustomConfig>(customConfig),
        displayName = pulumi.Input.asInput<String>(displayName),
        enablementState = pulumi.Input.asInput<String>(enablementState),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customConfig'] = pulumi.Input.mapInputValue<
        ProjectCustomModuleCustomConfig,
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
      customConfig: ProjectCustomModuleCustomConfig.fromMap(
          (map['customConfig'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] as String,
      enablementState: map['enablementState'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
