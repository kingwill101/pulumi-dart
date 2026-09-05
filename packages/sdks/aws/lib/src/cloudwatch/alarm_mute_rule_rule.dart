// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alarm_mute_rule_rule_schedule.dart';

class AlarmMuteRuleRule {
  /// Schedule for the mute rule. See `schedule` block below for details.
  final pulumi.Input<AlarmMuteRuleRuleSchedule?>? schedule;

  /// Creates a new [AlarmMuteRuleRule].
  /// [schedule] Schedule for the mute rule. See `schedule` block below for details.
  const AlarmMuteRuleRule({
    this.schedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'schedule': ?pulumi.Input.mapOptionalInputValue<AlarmMuteRuleRuleSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
    };
  }

  factory AlarmMuteRuleRule.fromMap(Map<String, dynamic> map) {
    return AlarmMuteRuleRule(
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlarmMuteRuleRuleSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
