// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../management_folder_security_health_analytics_custom_module_custom_config/management_folder_security_health_analytics_custom_module_custom_config.dart';

/// The set of arguments for ManagementFolderSecurityHealthAnalyticsCustomModule.
class ManagementFolderSecurityHealthAnalyticsCustomModuleArgs {
  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  final Input<ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig>?
      customConfig;

  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module. The display name must be between 1 and
  /// 128 characters, start with a lowercase letter, and contain alphanumeric
  /// characters or underscores only.
  final Input<String>? displayName;

  /// The enablement state of the custom module.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final Input<String>? enablementState;

  /// Numerical ID of the parent folder.
  final Input<String> folder;

  /// Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  final Input<String>? location;

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
      map['customConfig'] = Input.mapOptionalInputValue<
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
      customConfig: Input.asOptionalInput<
              ManagementFolderSecurityHealthAnalyticsCustomModuleCustomConfig>(
          map['customConfig']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      enablementState: Input.asOptionalInput<String>(map['enablementState']),
      folder: Input.asInput<String>(map['folder']),
      location: Input.asOptionalInput<String>(map['location']),
    );
  }
}
