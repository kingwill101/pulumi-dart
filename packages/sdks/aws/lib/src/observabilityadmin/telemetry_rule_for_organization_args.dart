// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_rule_for_organization_rule.dart';
import 'telemetry_rule_for_organization_timeouts.dart';

/// {@template pulumi_observabilityadmin_telemetry_rule_for_organization_telemetry_rule_for_organization_args_doc}
/// The set of arguments for TelemetryRuleForOrganization.
/// {@endtemplate}
/// {@macro pulumi_observabilityadmin_telemetry_rule_for_organization_telemetry_rule_for_organization_args_doc}
class TelemetryRuleForOrganizationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration block for the organization telemetry rule. See `rule` below.
  final pulumi.Input<TelemetryRuleForOrganizationRule> rule;
  /// Name of the organization telemetry rule. Must be between 1 and 100 characters and contain only alphanumeric characters, hyphens, underscores, periods, hash symbols, and forward slashes. Changing this argument forces a new resource to be created.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> ruleName;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<TelemetryRuleForOrganizationTimeouts?>? timeouts;

  /// Creates a new [TelemetryRuleForOrganizationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rule] Configuration block for the organization telemetry rule. See `rule` below.
  /// [ruleName] Name of the organization telemetry rule. Must be between 1 and 100 characters and contain only alphanumeric characters, hyphens, underscores, periods, hash symbols, and forward slashes. Changing this argument forces a new resource to be created.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const TelemetryRuleForOrganizationArgs({
    this.region,
    required this.rule,
    required this.ruleName,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'rule': pulumi.Input.mapInputValue<TelemetryRuleForOrganizationRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
      'ruleName': ruleName,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<TelemetryRuleForOrganizationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory TelemetryRuleForOrganizationArgs.fromMap(Map<String, dynamic> map) {
    return TelemetryRuleForOrganizationArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: pulumi.Input.fromValue(TelemetryRuleForOrganizationRule.fromMap((map['rule']! as Map).cast<String, dynamic>())),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryRuleForOrganizationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
