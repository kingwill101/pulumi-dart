// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_monitor_action.dart';
import 'cron_trigger.dart';

/// Base definition of a schedule
class Schedule {
  /// [Required] Specifies the action of the schedule
  final pulumi.Input<CreateMonitorAction> action;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Display name of schedule.
  final pulumi.Input<String>? displayName;
  /// Is the schedule enabled?
  final pulumi.Input<bool>? isEnabled;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;
  /// [Required] Specifies the trigger details
  final pulumi.Input<CronTrigger> trigger;

  /// Creates a new [Schedule].
  /// [action] [Required] Specifies the action of the schedule
  /// [description] The asset description text.
  /// [displayName] Display name of schedule.
  /// [isEnabled] Is the schedule enabled?
  /// [properties] The asset property dictionary.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  /// [trigger] [Required] Specifies the trigger details
  const Schedule({
    required this.action,
    this.description,
    this.displayName,
    this.isEnabled,
    this.properties,
    this.tags,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<CreateMonitorAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'isEnabled': ?isEnabled,
      'properties': ?properties,
      'tags': ?tags,
      'trigger': pulumi.Input.mapInputValue<CronTrigger, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory Schedule.fromMap(Map<String, dynamic> map) {
    return Schedule(
      action: pulumi.Input.fromValue(CreateMonitorAction.fromMap((map['action']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trigger: pulumi.Input.fromValue(CronTrigger.fromMap((map['trigger']! as Map).cast<String, dynamic>())),
    );
  }
}

