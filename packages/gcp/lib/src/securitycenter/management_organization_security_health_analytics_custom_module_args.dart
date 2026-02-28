// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_organization_security_health_analytics_custom_module_custom_config.dart';

/// {@template pulumi_securitycenter_management_organization_security_health_analytics_custom_module_management_organization_security_health_analytics_custom_module_args_doc}
/// The set of arguments for ManagementOrganizationSecurityHealthAnalyticsCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_management_organization_security_health_analytics_custom_module_management_organization_security_health_analytics_custom_module_args_doc}
class ManagementOrganizationSecurityHealthAnalyticsCustomModuleArgs {
  /// The user specified custom configuration for the module.
  /// Structure is documented below.
  final pulumi.Input<ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfig>? customConfig;
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

  /// Creates a new [ManagementOrganizationSecurityHealthAnalyticsCustomModuleArgs].
  /// [customConfig] The user specified custom configuration for the module.
  /// [displayName] The display name of the Security Health Analytics custom module. This
  /// [enablementState] The enablement state of the custom module.
  /// [location] Location ID of the parent organization. If not provided, 'global' will be used as the default location.
  /// [organization] Numerical ID of the parent organization.
  ManagementOrganizationSecurityHealthAnalyticsCustomModuleArgs({
    ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfig? customConfig,
    String? displayName,
    String? enablementState,
    String? location,
    required String organization,
  }) :
      customConfig = pulumi.Input.asOptionalInput<ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfig>(customConfig),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enablementState = pulumi.Input.asOptionalInput<String>(enablementState),
      location = pulumi.Input.asOptionalInput<String>(location),
      organization = pulumi.Input.asInput<String>(organization);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customConfig': ?pulumi.Input.mapOptionalInputValue<ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfig, Map<String, dynamic>>(customConfig, (value) => value.toMap()),
      'displayName': ?displayName,
      'enablementState': ?enablementState,
      'location': ?location,
      'organization': organization,
    };
  }

  factory ManagementOrganizationSecurityHealthAnalyticsCustomModuleArgs.fromMap(Map<String, dynamic> map) {
    return ManagementOrganizationSecurityHealthAnalyticsCustomModuleArgs(
      customConfig: map['customConfig'] == null ? null : ManagementOrganizationSecurityHealthAnalyticsCustomModuleCustomConfig.fromMap((map['customConfig'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      enablementState: map['enablementState'] == null ? null : map['enablementState'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      organization: map['organization'] as String,
    );
  }
}

