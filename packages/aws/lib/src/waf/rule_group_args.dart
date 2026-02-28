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
  /// Name of the rule group. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RuleGroupArgs].
  /// [activatedRules] A list of activated rules, see below
  /// [metricName] A friendly name for the metrics from the rule group
  /// [name] Name of the rule group. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  RuleGroupArgs({
    List<RuleGroupActivatedRule>? activatedRules,
    required String metricName,
    String? name,
    Map<String, String>? tags,
  }) :
      activatedRules = pulumi.Input.asOptionalInput<List<RuleGroupActivatedRule>>(activatedRules),
      metricName = pulumi.Input.asInput<String>(metricName),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      activatedRules: map['activatedRules'] == null ? null : pulumi.Input.decodeList<RuleGroupActivatedRule>(map['activatedRules'], (value) => RuleGroupActivatedRule.fromMap((value as Map).cast<String, dynamic>())),
      metricName: map['metricName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

