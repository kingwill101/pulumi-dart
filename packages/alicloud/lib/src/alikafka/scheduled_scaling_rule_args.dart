// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alikafka_scheduled_scaling_rule_scheduled_scaling_rule_args_doc}
/// The set of arguments for ScheduledScalingRule.
/// {@endtemplate}
/// {@macro pulumi_alikafka_scheduled_scaling_rule_scheduled_scaling_rule_args_doc}
class ScheduledScalingRuleArgs {
  /// The duration (unit: minutes) of a scheduled elastic task.
  ///
  /// > **NOTE:** The parameter value must be at least 15 minutes.
  final pulumi.Input<int> durationMinutes;
  /// Enables or disables the scheduled task policy. Valid values:
  final pulumi.Input<bool>? enable;
  /// The time when the scheduled policy starts to execute.
  final pulumi.Input<int> firstScheduledTime;
  /// The instance ID.
  final pulumi.Input<String> instanceId;
  /// When `schedule_type` is `repeat`, the parameter is required. Valid values:
  /// -`Daily`: Daily scheduled task.
  /// -`Weekly`: Weekly scheduled task.
  final pulumi.Input<String>? repeatType;
  /// The scheduled elastic reserved production specification (unit: MB/s).
  final pulumi.Input<int> reservedPubFlow;
  /// The scheduled elastic reserved consumption specification (unit: MB/s).
  final pulumi.Input<int> reservedSubFlow;
  /// The name of the scheduled policy rule.
  final pulumi.Input<String> ruleName;
  /// The schedule type. Valid values:
  final pulumi.Input<String> scheduleType;
  /// The time zone (Coordinated Universal Time).
  final pulumi.Input<String> timeZone;
  /// The weekly types. Supports execution on multiple days. When `repeat_type` is set to `Weekly`, you need to input this parameter. Valid values: `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`, `Sunday`.
  final pulumi.Input<List<String>>? weeklyTypes;

  /// Creates a new [ScheduledScalingRuleArgs].
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
  ScheduledScalingRuleArgs({
    required int durationMinutes,
    bool? enable,
    required int firstScheduledTime,
    required String instanceId,
    String? repeatType,
    required int reservedPubFlow,
    required int reservedSubFlow,
    required String ruleName,
    required String scheduleType,
    required String timeZone,
    List<String>? weeklyTypes,
  }) :
      durationMinutes = pulumi.Input.asInput<int>(durationMinutes),
      enable = pulumi.Input.asOptionalInput<bool>(enable),
      firstScheduledTime = pulumi.Input.asInput<int>(firstScheduledTime),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      repeatType = pulumi.Input.asOptionalInput<String>(repeatType),
      reservedPubFlow = pulumi.Input.asInput<int>(reservedPubFlow),
      reservedSubFlow = pulumi.Input.asInput<int>(reservedSubFlow),
      ruleName = pulumi.Input.asInput<String>(ruleName),
      scheduleType = pulumi.Input.asInput<String>(scheduleType),
      timeZone = pulumi.Input.asInput<String>(timeZone),
      weeklyTypes = pulumi.Input.asOptionalInput<List<String>>(weeklyTypes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'durationMinutes': durationMinutes,
      'enable': ?enable,
      'firstScheduledTime': firstScheduledTime,
      'instanceId': instanceId,
      'repeatType': ?repeatType,
      'reservedPubFlow': reservedPubFlow,
      'reservedSubFlow': reservedSubFlow,
      'ruleName': ruleName,
      'scheduleType': scheduleType,
      'timeZone': timeZone,
      'weeklyTypes': ?weeklyTypes,
    };
  }

  factory ScheduledScalingRuleArgs.fromMap(Map<String, dynamic> map) {
    return ScheduledScalingRuleArgs(
      durationMinutes: map['durationMinutes'] as int,
      enable: map['enable'] == null ? null : map['enable'] as bool,
      firstScheduledTime: map['firstScheduledTime'] as int,
      instanceId: map['instanceId'] as String,
      repeatType: map['repeatType'] == null ? null : map['repeatType'] as String,
      reservedPubFlow: map['reservedPubFlow'] as int,
      reservedSubFlow: map['reservedSubFlow'] as int,
      ruleName: map['ruleName'] as String,
      scheduleType: map['scheduleType'] as String,
      timeZone: map['timeZone'] as String,
      weeklyTypes: map['weeklyTypes'] == null ? null : (map['weeklyTypes'] as List).cast<String>(),
    );
  }
}

