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
  ScheduleState({
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
      cronExpression: map['cronExpression'] == null ? null : (map['cronExpression']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      enable: map['enable'] == null ? null : (map['enable']! as bool).input(),
      flowName: map['flowName'] == null ? null : (map['flowName']! as String).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime']! as String).input(),
      payload: map['payload'] == null ? null : (map['payload']! as String).input(),
      scheduleId: map['scheduleId'] == null ? null : (map['scheduleId']! as String).input(),
      scheduleName: map['scheduleName'] == null ? null : (map['scheduleName']! as String).input(),
    );
  }
}

