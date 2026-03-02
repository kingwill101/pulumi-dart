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
      action: (CreateMonitorActionResponse.fromMap((map['action'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      isEnabled: map['isEnabled'] == null ? null : (map['isEnabled']! as bool).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      trigger: (CronTriggerResponse.fromMap((map['trigger'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

