// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_rule_rule.dart';
import 'telemetry_rule_timeouts.dart';

/// {@template pulumi_observabilityadmin_telemetry_rule_telemetry_rule_args_doc}
/// The set of arguments for TelemetryRule.
/// {@endtemplate}
/// {@macro pulumi_observabilityadmin_telemetry_rule_telemetry_rule_args_doc}
class TelemetryRuleArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for the telemetry rule. See `rule` below.
  final pulumi.Input<TelemetryRuleRule> rule;
  /// Name of the telemetry rule. Must be between 1 and 100 characters and contain only alphanumeric characters, hyphens, underscores, periods, hash symbols, and forward slashes. Changing this argument forces a new resource to be created.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> ruleName;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<TelemetryRuleTimeouts>? timeouts;

  /// Creates a new [TelemetryRuleArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rule] Configuration block for the telemetry rule. See `rule` below.
  /// [ruleName] Name of the telemetry rule. Must be between 1 and 100 characters and contain only alphanumeric characters, hyphens, underscores, periods, hash symbols, and forward slashes. Changing this argument forces a new resource to be created.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const TelemetryRuleArgs({
    this.region,
    required this.rule,
    required this.ruleName,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'rule': pulumi.Input.mapInputValue<TelemetryRuleRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
      'ruleName': ruleName,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory TelemetryRuleArgs.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: pulumi.Input.fromValue(TelemetryRuleRule.fromMap((map['rule']! as Map).cast<String, dynamic>())),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
