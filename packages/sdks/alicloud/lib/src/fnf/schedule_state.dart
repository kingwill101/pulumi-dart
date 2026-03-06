// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Schedule resources.
class ScheduleState {
  /// The CRON expression of the time-based schedule to be created.
  final pulumi.Input<String>? cronExpression;
  /// The description of the time-based schedule to be created.
  final pulumi.Input<String>? description;
  /// Specifies whether to enable the time-based schedule you want to create. Valid values: `false`, `true`.
  final pulumi.Input<bool>? enable;
  /// The name of the flow bound to the time-based schedule you want to create.
  final pulumi.Input<String>? flowName;
  /// The time when the time-based schedule was last updated.
  final pulumi.Input<String>? lastModifiedTime;
  /// The trigger message of the time-based schedule to be created. It must be in JSON object format.
  final pulumi.Input<String>? payload;
  /// The ID of the time-based schedule.
  final pulumi.Input<String>? scheduleId;
  /// The name of the time-based schedule to be created.
  final pulumi.Input<String>? scheduleName;

  /// Creates a new [ScheduleState].
  /// [cronExpression] The CRON expression of the time-based schedule to be created.
  /// [description] The description of the time-based schedule to be created.
  /// [enable] Specifies whether to enable the time-based schedule you want to create. Valid values: `false`, `true`.
  /// [flowName] The name of the flow bound to the time-based schedule you want to create.
  /// [lastModifiedTime] The time when the time-based schedule was last updated.
  /// [payload] The trigger message of the time-based schedule to be created. It must be in JSON object format.
  /// [scheduleId] The ID of the time-based schedule.
  /// [scheduleName] The name of the time-based schedule to be created.
  const ScheduleState({
    this.cronExpression,
    this.description,
    this.enable,
    this.flowName,
    this.lastModifiedTime,
    this.payload,
    this.scheduleId,
    this.scheduleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronExpression': ?cronExpression,
      'description': ?description,
      'enable': ?enable,
      'flowName': ?flowName,
      'lastModifiedTime': ?lastModifiedTime,
      'payload': ?payload,
      'scheduleId': ?scheduleId,
      'scheduleName': ?scheduleName,
    };
  }

  factory ScheduleState.fromMap(Map<String, dynamic> map) {
    return ScheduleState(
      cronExpression: (() { final guardedValue = map['cronExpression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      flowName: (() { final guardedValue = map['flowName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleId: (() { final guardedValue = map['scheduleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleName: (() { final guardedValue = map['scheduleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

