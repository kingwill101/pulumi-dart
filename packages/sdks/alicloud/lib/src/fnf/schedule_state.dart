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
    pulumi.Output<String>? cronExpression,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enable,
    pulumi.Output<String>? flowName,
    pulumi.Output<String>? lastModifiedTime,
    pulumi.Output<String>? payload,
    pulumi.Output<String>? scheduleId,
    pulumi.Output<String>? scheduleName,
  }) :
      cronExpression = pulumi.Input.asOptionalInput<String>(cronExpression),
      description = pulumi.Input.asOptionalInput<String>(description),
      enable = pulumi.Input.asOptionalInput<bool>(enable),
      flowName = pulumi.Input.asOptionalInput<String>(flowName),
      lastModifiedTime = pulumi.Input.asOptionalInput<String>(lastModifiedTime),
      payload = pulumi.Input.asOptionalInput<String>(payload),
      scheduleId = pulumi.Input.asOptionalInput<String>(scheduleId),
      scheduleName = pulumi.Input.asOptionalInput<String>(scheduleName);

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
      cronExpression: map['cronExpression'] == null ? null : pulumi.Output.create<String>(map['cronExpression'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enable: map['enable'] == null ? null : pulumi.Output.create<bool>(map['enable'] as bool),
      flowName: map['flowName'] == null ? null : pulumi.Output.create<String>(map['flowName'] as String),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTime'] as String),
      payload: map['payload'] == null ? null : pulumi.Output.create<String>(map['payload'] as String),
      scheduleId: map['scheduleId'] == null ? null : pulumi.Output.create<String>(map['scheduleId'] as String),
      scheduleName: map['scheduleName'] == null ? null : pulumi.Output.create<String>(map['scheduleName'] as String),
    );
  }
}

