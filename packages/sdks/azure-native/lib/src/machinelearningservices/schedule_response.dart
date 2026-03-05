// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'create_monitor_action_response.dart';
import 'cron_trigger_response.dart';

/// Base definition of a schedule
class ScheduleResponse {
  /// [Required] Specifies the action of the schedule
  final pulumi.Input<CreateMonitorActionResponse> action;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Display name of schedule.
  final pulumi.Input<String>? displayName;
  /// Is the schedule enabled?
  final pulumi.Input<bool>? isEnabled;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Provisioning state for the schedule.
  final pulumi.Input<String> provisioningState;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;
  /// [Required] Specifies the trigger details
  final pulumi.Input<CronTriggerResponse> trigger;

  /// Creates a new [ScheduleResponse].
  /// [action] [Required] Specifies the action of the schedule
  /// [description] The asset description text.
  /// [displayName] Display name of schedule.
  /// [isEnabled] Is the schedule enabled?
  /// [properties] The asset property dictionary.
  /// [provisioningState] Provisioning state for the schedule.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  /// [trigger] [Required] Specifies the trigger details
  ScheduleResponse({
    required this.action,
    this.description,
    this.displayName,
    this.isEnabled,
    this.properties,
    required this.provisioningState,
    this.tags,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<CreateMonitorActionResponse, Map<String, dynamic>>(action, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'isEnabled': ?isEnabled,
      'properties': ?properties,
      'provisioningState': provisioningState,
      'tags': ?tags,
      'trigger': pulumi.Input.mapInputValue<CronTriggerResponse, Map<String, dynamic>>(trigger, (value) => value.toMap()),
    };
  }

  factory ScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ScheduleResponse(
      action: pulumi.Input.fromValue(CreateMonitorActionResponse.fromMap((map['action']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trigger: pulumi.Input.fromValue(CronTriggerResponse.fromMap((map['trigger']! as Map).cast<String, dynamic>())),
    );
  }
}

