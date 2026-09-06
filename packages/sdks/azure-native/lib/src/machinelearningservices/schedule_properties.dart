// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Base definition of a schedule
class ScheduleProperties {
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
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>?>? tags;
  /// [Required] Specifies the trigger details
  final pulumi.Input<dynamic> trigger;

  /// Creates a new [ScheduleProperties].
  /// [action] [Required] Specifies the action of the schedule
  /// [description] The asset description text.
  /// [displayName] Display name of schedule.
  /// [isEnabled] Is the schedule enabled?
  /// [properties] The asset property dictionary.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  /// [trigger] [Required] Specifies the trigger details
  ScheduleProperties({
    required this.action,
    this.description,
    this.displayName,
    pulumi.Input<bool?>? isEnabled,
    this.properties,
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
      'tags': ?tags,
      'trigger': trigger,
    };
  }

  factory ScheduleProperties.fromMap(Map<String, dynamic> map) {
    return ScheduleProperties(
      action: pulumi.Input.fromValue(map['action']),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trigger: pulumi.Input.fromValue(map['trigger']),
    );
  }
}
