// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../management_folder_security_health_analytics_custom_module_custom_config/management_folder_security_health_analytics_custom_module_custom_config.dart';

/// The set of arguments for ManagementFolderSecurityHealthAnalyticsCustomModule.
class ManagementFolderSecurityHealthAnalyticsCustomModuleArgs {
  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  final pulumi
      .Input<ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig>?
      customConfig;

  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  final pulumi.Input<String>? displayName;

  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? enablementState;

  /// Numerical ID of the parent folder.
  final pulumi.Input<String> folder;

  /// Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  final pulumi.Input<String>? location;

  ManagementFolderSecurityHealthAnalyticsCustomModuleArgs({
    this.customConfig,
    this.displayName,
    this.enablementState,
    required this.folder,
    this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customConfigValue = customConfig;
    if (customConfigValue != null) {
      map['customConfig'] = pulumi.Input.mapOptionalInputValue<
          ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig,
          Map<String, dynamic>>(customConfigValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final enablementStateValue = enablementState;
    if (enablementStateValue != null) {
      map['enablementState'] = enablementStateValue;
    }
    map['folder'] = folder;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    return map;
  }

  factory ManagementFolderSecurityHealthAnalyticsCustomModuleArgs.fromMap(
      Map<String, dynamic> map) {
    return ManagementFolderSecurityHealthAnalyticsCustomModuleArgs(
      customConfig: pulumi.Input.asOptionalInput<
              ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig>(
          map['customConfig']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      enablementState:
          pulumi.Input.asOptionalInput<String>(map['enablementState']),
      folder: pulumi.Input.asInput<String>(map['folder']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
    );
  }
}
