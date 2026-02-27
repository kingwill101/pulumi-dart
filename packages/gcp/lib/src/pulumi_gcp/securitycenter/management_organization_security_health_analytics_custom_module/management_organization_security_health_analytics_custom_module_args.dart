// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../management_organization_security_health_analytics_custom_module_custom_config/management_organization_security_health_analytics_custom_module_custom_config.dart';

/// The set of arguments for ManagementOrganizationSecurityHealthAnalyticsCustomModule.
class ManagementOrganizationSecurityHealthAnalyticsCustomModuleArgs {
  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  final pulumi.Input<
          ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfig>?
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

  /// Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  final pulumi.Input<String>? location;

  /// Numerical ID of the parent organization.
  final pulumi.Input<String> organization;

  ManagementOrganizationSecurityHealthAnalyticsCustomModuleArgs({
    this.customConfig,
    this.displayName,
    this.enablementState,
    this.location,
    required this.organization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customConfigValue = customConfig;
    if (customConfigValue != null) {
      map['customConfig'] = pulumi.Input.mapOptionalInputValue<
          ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfig,
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
    map['organization'] = organization;
    return map;
  }

  factory ManagementOrganizationSecurityHealthAnalyticsCustomModuleArgs.fromMap(
      Map<String, dynamic> map) {
    return ManagementOrganizationSecurityHealthAnalyticsCustomModuleArgs(
      customConfig: pulumi.Input.asOptionalInput<
              ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfig>(
          map['customConfig']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      enablementState:
          pulumi.Input.asOptionalInput<String>(map['enablementState']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      organization: pulumi.Input.asInput<String>(map['organization']),
    );
  }
}
