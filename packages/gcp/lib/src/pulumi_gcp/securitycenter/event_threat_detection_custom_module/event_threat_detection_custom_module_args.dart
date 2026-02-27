// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EventThreatDetectionCustomModule.
class EventThreatDetectionCustomModuleArgs {
  /// Config for the module. For the resident module, its config value is defined at this level.
  /// For the inherited module, its config value is inherited from the ancestor module.
  final pulumi.Input<String> config;

  /// The human readable name to be displayed for the module.
  final pulumi.Input<String>? displayName;

  /// The state of enablement for the module at the given level of the hierarchy.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String> enablementState;

  /// Numerical ID of the parent organization.
  final pulumi.Input<String> organization;

  /// Immutable. Type for the module. e.g. CONFIGURABLE_BAD_IP.
  final pulumi.Input<String> type;

  EventThreatDetectionCustomModuleArgs({
    required this.config,
    this.displayName,
    required this.enablementState,
    required this.organization,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['enablementState'] = enablementState;
    map['organization'] = organization;
    map['type'] = type;
    return map;
  }

  factory EventThreatDetectionCustomModuleArgs.fromMap(
      Map<String, dynamic> map) {
    return EventThreatDetectionCustomModuleArgs(
      config: pulumi.Input.asInput<String>(map['config']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      enablementState: pulumi.Input.asInput<String>(map['enablementState']),
      organization: pulumi.Input.asInput<String>(map['organization']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
