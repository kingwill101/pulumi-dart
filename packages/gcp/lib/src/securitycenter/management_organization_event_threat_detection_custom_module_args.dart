// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_management_organization_event_threat_detection_custom_module_management_organization_event_threat_detection_custom_module_args_doc}
/// The set of arguments for ManagementOrganizationEventThreatDetectionCustomModule.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_management_organization_event_threat_detection_custom_module_management_organization_event_threat_detection_custom_module_args_doc}
class ManagementOrganizationEventThreatDetectionCustomModuleArgs {
  /// Config for the module. For the resident module, its config value is defined at this level.
  /// For the inherited module, its config value is inherited from the ancestor module.
  final pulumi.Input<String>? config;

  /// The human readable name to be displayed for the module.
  final pulumi.Input<String>? displayName;

  /// The state of enablement for the module at the given level of the hierarchy.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? enablementState;

  /// Location ID of the parent organization. Only global is supported at the moment.
  final pulumi.Input<String>? location;

  /// Numerical ID of the parent organization.
  final pulumi.Input<String> organization;

  /// Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  final pulumi.Input<String>? type;

  /// Creates a new [ManagementOrganizationEventThreatDetectionCustomModuleArgs].
  /// [config] Config for the module. For the resident module, its config value is defined at this level.
  /// [displayName] The human readable name to be displayed for the module.
  /// [enablementState] The state of enablement for the module at the given level of the hierarchy.
  /// [location] Location ID of the parent organization. Only global is supported at the moment.
  /// [organization] Numerical ID of the parent organization.
  /// [type] Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  ManagementOrganizationEventThreatDetectionCustomModuleArgs({
    String? config,
    String? displayName,
    String? enablementState,
    String? location,
    required String organization,
    String? type,
  })  : config = pulumi.Input.asOptionalInput<String>(config),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        enablementState = pulumi.Input.asOptionalInput<String>(enablementState),
        location = pulumi.Input.asOptionalInput<String>(location),
        organization = pulumi.Input.asInput<String>(organization),
        type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configValue = config;
    if (configValue != null) {
      map['config'] = configValue;
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
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ManagementOrganizationEventThreatDetectionCustomModuleArgs.fromMap(
      Map<String, dynamic> map) {
    return ManagementOrganizationEventThreatDetectionCustomModuleArgs(
      config: map['config'] == null ? null : map['config'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      enablementState: map['enablementState'] == null
          ? null
          : map['enablementState'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      organization: map['organization'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
