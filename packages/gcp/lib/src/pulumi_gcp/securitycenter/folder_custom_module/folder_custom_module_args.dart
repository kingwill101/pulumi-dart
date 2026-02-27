// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../folder_custom_module_custom_config/folder_custom_module_custom_config.dart';

/// The set of arguments for FolderCustomModule.
class FolderCustomModuleArgs {
  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  final pulumi.Input<FolderCustomModuleCustomConfig> customConfig;

  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  final pulumi.Input<String> displayName;

  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> enablementState;

  /// Numerical ID of the parent folder.
  final pulumi.Input<String> folder;

  FolderCustomModuleArgs({
    required this.customConfig,
    required this.displayName,
    required this.enablementState,
    required this.folder,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customConfig'] = pulumi.Input.mapInputValue<
        FolderCustomModuleCustomConfig,
        Map<String, dynamic>>(customConfig, (value) => value.toMap());
    map['displayName'] = displayName;
    map['enablementState'] = enablementState;
    map['folder'] = folder;
    return map;
  }

  factory FolderCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return FolderCustomModuleArgs(
      customConfig: pulumi.Input.asInput<FolderCustomModuleCustomConfig>(
          map['customConfig']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      enablementState: pulumi.Input.asInput<String>(map['enablementState']),
      folder: pulumi.Input.asInput<String>(map['folder']),
    );
  }
}
