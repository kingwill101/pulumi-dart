// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fnf_schedule_schedule_args_doc}
/// The set of arguments for Schedule.
/// {@endtemplate}
/// {@macro pulumi_fnf_schedule_schedule_args_doc}
class ScheduleArgs {
  /// The CRON expression of the time-based schedule to be created.
  final pulumi.Input<String> cronExpression;
  /// The description of the time-based schedule to be created.
  final pulumi.Input<String>? description;
  /// Specifies whether to enable the time-based schedule you want to create. Valid values: `false`, `true`.
  final pulumi.Input<bool>? enable;
  /// The name of the flow bound to the time-based schedule you want to create.
  final pulumi.Input<String> flowName;
  /// The trigger message of the time-based schedule to be created. It must be in JSON object format.
  final pulumi.Input<String>? payload;
  /// The name of the time-based schedule to be created.
  final pulumi.Input<String> scheduleName;

  /// Creates a new [ScheduleArgs].
  /// [cronExpression] The CRON expression of the time-based schedule to be created.
  /// [description] The description of the time-based schedule to be created.
  /// [enable] Specifies whether to enable the time-based schedule you want to create. Valid values: `false`, `true`.
  /// [flowName] The name of the flow bound to the time-based schedule you want to create.
  /// [payload] The trigger message of the time-based schedule to be created. It must be in JSON object format.
  /// [scheduleName] The name of the time-based schedule to be created.
  const ScheduleArgs({
    required this.cronExpression,
    this.description,
    this.enable,
    required this.flowName,
    this.payload,
    required this.scheduleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cronExpression': cronExpression,
      'description': ?description,
      'enable': ?enable,
      'flowName': flowName,
      'payload': ?payload,
      'scheduleName': scheduleName,
    };
  }

  factory ScheduleArgs.fromMap(Map<String, dynamic> map) {
    return ScheduleArgs(
      cronExpression: pulumi.Input.fromValue(map['cronExpression'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      flowName: pulumi.Input.fromValue(map['flowName'] as String),
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleName: pulumi.Input.fromValue(map['scheduleName'] as String),
    );
  }
}

