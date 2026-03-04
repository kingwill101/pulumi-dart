// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_activated_rule.dart';

/// {@template pulumi_wafregional_rule_group_rule_group_args_doc}
/// The set of arguments for RuleGroup.
/// {@endtemplate}
/// {@macro pulumi_wafregional_rule_group_rule_group_args_doc}
class RuleGroupArgs {
  /// A list of activated rules, see below
  final pulumi.Input<List<RuleGroupActivatedRule>>? activatedRules;

  /// A friendly name for the metrics from the rule group
  final pulumi.Input<String> metricName;

  /// A friendly name of the rule group
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RuleGroupArgs].
  /// [activatedRules] A list of activated rules, see below
  /// [metricName] A friendly name for the metrics from the rule group
  /// [name] A friendly name of the rule group
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  RuleGroupArgs({
    this.activatedRules,
    required this.metricName,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<RuleGroupActivatedRule>,
            List<Map<String, dynamic>>
          >(
            activatedRules,
            (value) =>
                pulumi.Input.encodeList<
                  RuleGroupActivatedRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'metricName': metricName,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory RuleGroupArgs.fromMap(Map<String, dynamic> map) {
    return RuleGroupArgs(
      activatedRules: (() {
        final guardedValue = map['activatedRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RuleGroupActivatedRule>(
            guardedValue,
            (value) => RuleGroupActivatedRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
