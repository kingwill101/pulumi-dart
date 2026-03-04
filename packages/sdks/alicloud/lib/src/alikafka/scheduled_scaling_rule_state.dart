// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ScheduledScalingRule resources.
class ScheduledScalingRuleState {
  /// The duration (unit: minutes) of a scheduled elastic task.
  ///
  /// &gt; **NOTE:** The parameter value must be at least 15 minutes.
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
    this.durationMinutes,
    this.enable,
    this.firstScheduledTime,
    this.instanceId,
    this.repeatType,
    this.reservedPubFlow,
    this.reservedSubFlow,
    this.ruleName,
    this.scheduleType,
    this.timeZone,
    this.weeklyTypes,
  });

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
      durationMinutes: (() {
        final guardedValue = map['durationMinutes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      enable: (() {
        final guardedValue = map['enable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      firstScheduledTime: (() {
        final guardedValue = map['firstScheduledTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repeatType: (() {
        final guardedValue = map['repeatType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reservedPubFlow: (() {
        final guardedValue = map['reservedPubFlow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      reservedSubFlow: (() {
        final guardedValue = map['reservedSubFlow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ruleName: (() {
        final guardedValue = map['ruleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scheduleType: (() {
        final guardedValue = map['scheduleType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeZone: (() {
        final guardedValue = map['timeZone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      weeklyTypes: (() {
        final guardedValue = map['weeklyTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
