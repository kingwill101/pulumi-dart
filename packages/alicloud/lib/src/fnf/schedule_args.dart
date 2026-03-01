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
  ScheduleArgs({
    required String cronExpression,
    String? description,
    bool? enable,
    required String flowName,
    String? payload,
    required String scheduleName,
  }) :
      cronExpression = pulumi.Input.asInput<String>(cronExpression),
      description = pulumi.Input.asOptionalInput<String>(description),
      enable = pulumi.Input.asOptionalInput<bool>(enable),
      flowName = pulumi.Input.asInput<String>(flowName),
      payload = pulumi.Input.asOptionalInput<String>(payload),
      scheduleName = pulumi.Input.asInput<String>(scheduleName);

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
      cronExpression: map['cronExpression'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      enable: map['enable'] == null ? null : map['enable'] as bool,
      flowName: map['flowName'] as String,
      payload: map['payload'] == null ? null : map['payload'] as String,
      scheduleName: map['scheduleName'] as String,
    );
  }
}

