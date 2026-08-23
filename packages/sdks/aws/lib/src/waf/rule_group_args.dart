// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_activated_rule.dart';

/// {@template pulumi_waf_rule_group_rule_group_args_doc}
/// The set of arguments for RuleGroup.
/// {@endtemplate}
/// {@macro pulumi_waf_rule_group_rule_group_args_doc}
class RuleGroupArgs {
  /// A list of activated rules, see below
  final pulumi.Input<List<RuleGroupActivatedRule>>? activatedRules;
  /// A friendly name for the metrics from the rule group
  final pulumi.Input<String> metricName;
  /// Name of the rule group. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  final pulumi.Input<String>? name;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RuleGroupArgs].
  /// [activatedRules] A list of activated rules, see below
  /// [metricName] A friendly name for the metrics from the rule group
  /// [name] Name of the rule group. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  /// [tags] Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const RuleGroupArgs({
    this.activatedRules,
    required this.metricName,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedRules': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupActivatedRule>, List<Map<String, dynamic>>>(activatedRules, (value) => pulumi.Input.encodeList<RuleGroupActivatedRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metricName': metricName,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory RuleGroupArgs.fromMap(Map<String, dynamic> map) {
    return RuleGroupArgs(
      activatedRules: (() { final guardedValue = map['activatedRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupActivatedRule>(guardedValue, (value) => RuleGroupActivatedRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metricName: pulumi.Input.fromValue(map['metricName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
