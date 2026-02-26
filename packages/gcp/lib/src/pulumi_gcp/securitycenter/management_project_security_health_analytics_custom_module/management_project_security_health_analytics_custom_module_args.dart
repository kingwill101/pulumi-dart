// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../management_project_security_health_analytics_custom_module_custom_config/management_project_security_health_analytics_custom_module_custom_config.dart';

/// The set of arguments for ManagementProjectSecurityHealthAnalyticsCustomModule.
class ManagementProjectSecurityHealthAnalyticsCustomModuleArgs {
  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  final Input<ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfig>?
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

  /// Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  final Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  ManagementProjectSecurityHealthAnalyticsCustomModuleArgs({
    this.customConfig,
    this.displayName,
    this.enablementState,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customConfigValue = customConfig;
    if (customConfigValue != null) {
      map['customConfig'] = Input.mapOptionalInputValue<
          ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfig,
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
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory ManagementProjectSecurityHealthAnalyticsCustomModuleArgs.fromMap(
      Map<String, dynamic> map) {
    return ManagementProjectSecurityHealthAnalyticsCustomModuleArgs(
      customConfig: Input.asOptionalInput<
              ManagementProjectSecurityHealthAnalyticsCustomModuleCustomConfig>(
          map['customConfig']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      enablementState: Input.asOptionalInput<String>(map['enablementState']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
