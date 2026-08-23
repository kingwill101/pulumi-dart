// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_rule_rule.dart';
import 'telemetry_rule_timeouts.dart';

/// Input properties used for looking up and filtering TelemetryRule resources.
class TelemetryRuleState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for the telemetry rule. See `rule` below.
  final pulumi.Input<TelemetryRuleRule>? rule;
  /// ARN of the telemetry rule.
  final pulumi.Input<String>? ruleArn;
  /// Name of the telemetry rule. Must be between 1 and 100 characters and contain only alphanumeric characters, hyphens, underscores, periods, hash symbols, and forward slashes. Changing this argument forces a new resource to be created.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? ruleName;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<TelemetryRuleTimeouts>? timeouts;

  /// Creates a new [TelemetryRuleState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rule] Configuration block for the telemetry rule. See `rule` below.
  /// [ruleArn] ARN of the telemetry rule.
  /// [ruleName] Name of the telemetry rule. Must be between 1 and 100 characters and contain only alphanumeric characters, hyphens, underscores, periods, hash symbols, and forward slashes. Changing this argument forces a new resource to be created.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const TelemetryRuleState({
    this.region,
    this.rule,
    this.ruleArn,
    this.ruleName,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'rule': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
      'ruleArn': ?ruleArn,
      'ruleName': ?ruleName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory TelemetryRuleState.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleState(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ruleArn: (() { final guardedValue = map['ruleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
