// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Base definition of a schedule
class SchedulePropertiesResponse {
  /// [Required] Specifies the action of the schedule
  final pulumi.Input<dynamic> action;
  /// The asset description text.
  final pulumi.Input<String?>? description;
  /// Display name of schedule.
  final pulumi.Input<String?>? displayName;
  /// Is the schedule enabled?
  final pulumi.Input<bool?>? isEnabled;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>?>? properties;
  /// Provisioning state for the schedule.
  final pulumi.Input<String> provisioningState;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>?>? tags;
  /// [Required] Specifies the trigger details
  final pulumi.Input<dynamic> trigger;

  /// Creates a new [SchedulePropertiesResponse].
  /// [action] [Required] Specifies the action of the schedule
  /// [description] The asset description text.
  /// [displayName] Display name of schedule.
  /// [isEnabled] Is the schedule enabled?
  /// [properties] The asset property dictionary.
  /// [provisioningState] Provisioning state for the schedule.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  /// [trigger] [Required] Specifies the trigger details
  SchedulePropertiesResponse({
    required this.action,
    this.description,
    this.displayName,
    pulumi.Input<bool?>? isEnabled,
    this.properties,
    required this.provisioningState,
    this.tags,
    required this.trigger,
  }) : isEnabled = isEnabled ?? pulumi.Input.fromValue(true);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'description': ?description,
      'displayName': ?displayName,
      'isEnabled': ?isEnabled,
      'properties': ?properties,
      'provisioningState': provisioningState,
      'tags': ?tags,
      'trigger': trigger,
    };
  }

  factory SchedulePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SchedulePropertiesResponse(
      action: pulumi.Input.fromValue(map['action']),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trigger: pulumi.Input.fromValue(map['trigger']),
    );
  }
}
