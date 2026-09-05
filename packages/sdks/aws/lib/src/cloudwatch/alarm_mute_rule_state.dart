// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alarm_mute_rule_mute_targets.dart';
import 'alarm_mute_rule_rule.dart';

/// Input properties used for looking up and filtering AlarmMuteRule resources.
class AlarmMuteRuleState {
  /// ARN of the Alarm Mute Rule.
  final pulumi.Input<String?>? arn;
  /// Description of the alarm mute rule.
  final pulumi.Input<String?>? description;
  /// Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) when the mute rule expires. Seconds must be set to `00` (e.g., `2026-12-31T23:59:00Z`). Must not be set when using `at()` expressions.
  final pulumi.Input<String?>? expireDate;
  /// Timestamp of when the mute rule was last updated.
  final pulumi.Input<String?>? lastUpdatedTimestamp;
  /// Alarms to mute. See `muteTargets` block below for details.
  final pulumi.Input<AlarmMuteRuleMuteTargets?>? muteTargets;
  /// Indicates whether the mute rule is one-time or recurring. Valid values are `ONE_TIME` or `RECURRING`. See [Alarm mute rules](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/alarm-mute-rules.html) for details.
  final pulumi.Input<String?>? muteType;
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
  /// Current status of the mute rule. Valid values are `SCHEDULED`, `ACTIVE`, or `EXPIRED`.
  final pulumi.Input<String?>? status;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [AlarmMuteRuleState].
  /// [arn] ARN of the Alarm Mute Rule.
  /// [description] Description of the alarm mute rule.
  /// [expireDate] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) when the mute rule expires. Seconds must be set to `00` (e.g., `2026-12-31T23:59:00Z`). Must not be set when using `at()` expressions.
  /// [lastUpdatedTimestamp] Timestamp of when the mute rule was last updated.
  /// [muteTargets] Alarms to mute. See `muteTargets` block below for details.
  /// [muteType] Indicates whether the mute rule is one-time or recurring. Valid values are `ONE_TIME` or `RECURRING`. See [Alarm mute rules](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/alarm-mute-rules.html) for details.
  /// [name] Name of the alarm mute rule. Changing this forces a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rule] Rule definition for the mute rule. See `rule` block below for details.
  /// [startDate] Date and time in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) when the mute rule becomes active. Seconds must be set to `00` (e.g., `2026-01-01T00:00:00Z`). Must not be set when using `at()` expressions.
  /// [status] Current status of the mute rule. Valid values are `SCHEDULED`, `ACTIVE`, or `EXPIRED`.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const AlarmMuteRuleState({
    this.arn,
    this.description,
    this.expireDate,
    this.lastUpdatedTimestamp,
    this.muteTargets,
    this.muteType,
    this.name,
    this.region,
    this.rule,
    this.startDate,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'expireDate': ?expireDate,
      'lastUpdatedTimestamp': ?lastUpdatedTimestamp,
      'muteTargets': ?pulumi.Input.mapOptionalInputValue<AlarmMuteRuleMuteTargets, Map<String, dynamic>>(muteTargets, (value) => value.toMap()),
      'muteType': ?muteType,
      'name': ?name,
      'region': ?region,
      'rule': ?pulumi.Input.mapOptionalInputValue<AlarmMuteRuleRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
      'startDate': ?startDate,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AlarmMuteRuleState.fromMap(Map<String, dynamic> map) {
    return AlarmMuteRuleState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireDate: (() { final guardedValue = map['expireDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdatedTimestamp: (() { final guardedValue = map['lastUpdatedTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      muteTargets: (() { final guardedValue = map['muteTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlarmMuteRuleMuteTargets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      muteType: (() { final guardedValue = map['muteType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlarmMuteRuleRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startDate: (() { final guardedValue = map['startDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
