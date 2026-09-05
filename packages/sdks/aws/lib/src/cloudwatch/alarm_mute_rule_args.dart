// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alarm_mute_rule_mute_targets.dart';
import 'alarm_mute_rule_rule.dart';

/// {@template pulumi_cloudwatch_alarm_mute_rule_alarm_mute_rule_args_doc}
/// The set of arguments for AlarmMuteRule.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_alarm_mute_rule_alarm_mute_rule_args_doc}
class AlarmMuteRuleArgs {
  /// Description of the alarm mute rule.
  final pulumi.Input<String?>? description;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) when the mute rule expires. Seconds must be set to `00` (e.g., `2026-12-31T23:59:00Z`). Must not be set when using `at()` expressions.
  final pulumi.Input<String?>? expireDate;
  /// Alarms to mute. See `muteTargets` block below for details.
  final pulumi.Input<AlarmMuteRuleMuteTargets?>? muteTargets;
  /// Name of the alarm mute rule. Changing this forces a new resource.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Rule definition for the mute rule. See `rule` block below for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<AlarmMuteRuleRule?>? rule;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) when the mute rule becomes active. Seconds must be set to `00` (e.g., `2026-01-01T00:00:00Z`). Must not be set when using `at()` expressions.
  final pulumi.Input<String?>? startDate;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AlarmMuteRuleArgs].
  /// [description] Description of the alarm mute rule.
  /// [expireDate] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) when the mute rule expires. Seconds must be set to `00` (e.g., `2026-12-31T23:59:00Z`). Must not be set when using `at()` expressions.
  /// [muteTargets] Alarms to mute. See `muteTargets` block below for details.
  /// [name] Name of the alarm mute rule. Changing this forces a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rule] Rule definition for the mute rule. See `rule` block below for details.
  /// [startDate] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) when the mute rule becomes active. Seconds must be set to `00` (e.g., `2026-01-01T00:00:00Z`). Must not be set when using `at()` expressions.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const AlarmMuteRuleArgs({
    this.description,
    this.expireDate,
    this.muteTargets,
    this.name,
    this.region,
    this.rule,
    this.startDate,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'expireDate': ?expireDate,
      'muteTargets': ?pulumi.Input.mapOptionalInputValue<AlarmMuteRuleMuteTargets, Map<String, dynamic>>(muteTargets, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'rule': ?pulumi.Input.mapOptionalInputValue<AlarmMuteRuleRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
      'startDate': ?startDate,
      'tags': ?tags,
    };
  }

  factory AlarmMuteRuleArgs.fromMap(Map<String, dynamic> map) {
    return AlarmMuteRuleArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireDate: (() { final guardedValue = map['expireDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      muteTargets: (() { final guardedValue = map['muteTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlarmMuteRuleMuteTargets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlarmMuteRuleRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startDate: (() { final guardedValue = map['startDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
