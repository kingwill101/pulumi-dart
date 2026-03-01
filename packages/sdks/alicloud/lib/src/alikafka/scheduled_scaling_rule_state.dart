// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ScheduledScalingRule resources.
class ScheduledScalingRuleState {
  /// The duration (unit: minutes) of a scheduled elastic task.
  ///
  /// > **NOTE:** The parameter value must be at least 15 minutes.
  final pulumi.Input<int>? durationMinutes;
  /// Enables or disables the scheduled task policy. Valid values:
  final pulumi.Input<bool>? enable;
  /// The time when the scheduled policy starts to execute.
  final pulumi.Input<int>? firstScheduledTime;
  /// The instance ID.
  final pulumi.Input<String>? instanceId;
  /// When `schedule_type` is `repeat`, the parameter is required. Valid values:
  /// -`Daily`: Daily scheduled task.
  /// -`Weekly`: Weekly scheduled task.
  final pulumi.Input<String>? repeatType;
  /// The scheduled elastic reserved production specification (unit: MB/s).
  final pulumi.Input<int>? reservedPubFlow;
  /// The scheduled elastic reserved consumption specification (unit: MB/s).
  final pulumi.Input<int>? reservedSubFlow;
  /// The name of the scheduled policy rule.
  final pulumi.Input<String>? ruleName;
  /// The schedule type. Valid values:
  final pulumi.Input<String>? scheduleType;
  /// The time zone (Coordinated Universal Time).
  final pulumi.Input<String>? timeZone;
  /// The weekly types. Supports execution on multiple days. When `repeat_type` is set to `Weekly`, you need to input this parameter. Valid values: `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`.
  final pulumi.Input<List<String>>? weeklyTypes;

  /// Creates a new [ScheduledScalingRuleState].
  /// [durationMinutes] The duration (unit: minutes) of a scheduled elastic task.
  /// [enable] Enables or disables the scheduled task policy. Valid values:
  /// [firstScheduledTime] The time when the scheduled policy starts to execute.
  /// [instanceId] The instance ID.
  /// [repeatType] When `schedule_type` is `repeat`, the parameter is required. Valid values:
  /// [reservedPubFlow] The scheduled elastic reserved production specification (unit: MB/s).
  /// [reservedSubFlow] The scheduled elastic reserved consumption specification (unit: MB/s).
  /// [ruleName] The name of the scheduled policy rule.
  /// [scheduleType] The schedule type. Valid values:
  /// [timeZone] The time zone (Coordinated Universal Time).
  /// [weeklyTypes] The weekly types. Supports execution on multiple days. When `repeat_type` is set to `Weekly`, you need to input this parameter. Valid values: `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`.
  ScheduledScalingRuleState({
    pulumi.Output<int>? durationMinutes,
    pulumi.Output<bool>? enable,
    pulumi.Output<int>? firstScheduledTime,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? repeatType,
    pulumi.Output<int>? reservedPubFlow,
    pulumi.Output<int>? reservedSubFlow,
    pulumi.Output<String>? ruleName,
    pulumi.Output<String>? scheduleType,
    pulumi.Output<String>? timeZone,
    pulumi.Output<List<String>>? weeklyTypes,
  }) :
      durationMinutes = pulumi.Input.asOptionalInput<int>(durationMinutes),
      enable = pulumi.Input.asOptionalInput<bool>(enable),
      firstScheduledTime = pulumi.Input.asOptionalInput<int>(firstScheduledTime),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      repeatType = pulumi.Input.asOptionalInput<String>(repeatType),
      reservedPubFlow = pulumi.Input.asOptionalInput<int>(reservedPubFlow),
      reservedSubFlow = pulumi.Input.asOptionalInput<int>(reservedSubFlow),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      scheduleType = pulumi.Input.asOptionalInput<String>(scheduleType),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone),
      weeklyTypes = pulumi.Input.asOptionalInput<List<String>>(weeklyTypes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'durationMinutes': ?durationMinutes,
      'enable': ?enable,
      'firstScheduledTime': ?firstScheduledTime,
      'instanceId': ?instanceId,
      'repeatType': ?repeatType,
      'reservedPubFlow': ?reservedPubFlow,
      'reservedSubFlow': ?reservedSubFlow,
      'ruleName': ?ruleName,
      'scheduleType': ?scheduleType,
      'timeZone': ?timeZone,
      'weeklyTypes': ?weeklyTypes,
    };
  }

  factory ScheduledScalingRuleState.fromMap(Map<String, dynamic> map) {
    return ScheduledScalingRuleState(
      durationMinutes: map['durationMinutes'] == null ? null : pulumi.Output.create<int>(map['durationMinutes'] as int),
      enable: map['enable'] == null ? null : pulumi.Output.create<bool>(map['enable'] as bool),
      firstScheduledTime: map['firstScheduledTime'] == null ? null : pulumi.Output.create<int>(map['firstScheduledTime'] as int),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      repeatType: map['repeatType'] == null ? null : pulumi.Output.create<String>(map['repeatType'] as String),
      reservedPubFlow: map['reservedPubFlow'] == null ? null : pulumi.Output.create<int>(map['reservedPubFlow'] as int),
      reservedSubFlow: map['reservedSubFlow'] == null ? null : pulumi.Output.create<int>(map['reservedSubFlow'] as int),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      scheduleType: map['scheduleType'] == null ? null : pulumi.Output.create<String>(map['scheduleType'] as String),
      timeZone: map['timeZone'] == null ? null : pulumi.Output.create<String>(map['timeZone'] as String),
      weeklyTypes: map['weeklyTypes'] == null ? null : pulumi.Output.create<List<String>>((map['weeklyTypes'] as List).cast<String>()),
    );
  }
}

