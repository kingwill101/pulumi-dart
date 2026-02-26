// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ManagementOrganizationEventThreatDetectionCustomModule.
class ManagementOrganizationEventThreatDetectionCustomModuleArgs {
  /// Config for the module. For the resident module, its config value is defined at this level.
  /// For the inherited module, its config value is inherited from the ancestor module.
  final Input<String>? config;

  /// The human readable name to be displayed for the module.
  final Input<String>? displayName;

  /// The state of enablement for the module at the given level of the hierarchy.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final Input<String>? enablementState;

  /// Location ID of the parent organization. Only global is supported at the moment.
  final Input<String>? location;

  /// Numerical ID of the parent organization.
  final Input<String> organization;

  /// Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  final Input<String>? type;

  ManagementOrganizationEventThreatDetectionCustomModuleArgs({
    this.config,
    this.displayName,
    this.enablementState,
    this.location,
    required this.organization,
    this.type,
  });

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
      config: Input.asOptionalInput<String>(map['config']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      enablementState: Input.asOptionalInput<String>(map['enablementState']),
      location: Input.asOptionalInput<String>(map['location']),
      organization: Input.asInput<String>(map['organization']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
