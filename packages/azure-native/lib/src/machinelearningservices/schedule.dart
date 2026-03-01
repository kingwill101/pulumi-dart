// ignore_for_file: unused_element, unnecessary_cast

import 'create_monitor_action.dart';
import 'cron_trigger.dart';

/// Base definition of a schedule
class Schedule {
  /// [Required] Specifies the action of the schedule
  final CreateMonitorAction action;
  /// The asset description text.
  final String? description;
  /// Display name of schedule.
  final String? displayName;
  /// Is the schedule enabled?
  final bool? isEnabled;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;
  /// [Required] Specifies the trigger details
  final CronTrigger trigger;

  /// Creates a new [Schedule].
  /// [action] [Required] Specifies the action of the schedule
  /// [description] The asset description text.
  /// [displayName] Display name of schedule.
  /// [isEnabled] Is the schedule enabled?
  /// [properties] The asset property dictionary.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  /// [trigger] [Required] Specifies the trigger details
  Schedule({
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
      'action': action.toMap(),
      'description': ?description,
      'displayName': ?displayName,
      'isEnabled': ?isEnabled,
      'properties': ?properties,
      'tags': ?tags,
      'trigger': trigger.toMap(),
    };
  }

  factory Schedule.fromMap(Map<String, dynamic> map) {
    return Schedule(
      action: CreateMonitorAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      trigger: CronTrigger.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}

