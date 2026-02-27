// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../rule_group_activated_rule/rule_group_activated_rule.dart';

/// The set of arguments for RuleGroup.
class RuleGroupWafArgs {
  /// A list of activated rules, see below
  final pulumi.Input<List<RuleGroupActivatedRule>>? activatedRules;

  /// A friendly name for the metrics from the rule group
  final pulumi.Input<String> metricName;

  /// Name of the rule group. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  RuleGroupWafArgs({
    this.activatedRules,
    required this.metricName,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activatedRulesValue = activatedRules;
    if (activatedRulesValue != null) {
      map['activatedRules'] = pulumi.Input.mapOptionalInputValue<
              List<RuleGroupActivatedRule>, List<Map<String, dynamic>>>(
          activatedRulesValue,
          (value) => pulumi.Input.encodeList<RuleGroupActivatedRule,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['metricName'] = metricName;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RuleGroupWafArgs.fromMap(Map<String, dynamic> map) {
    return RuleGroupWafArgs(
      activatedRules:
          pulumi.Input.asOptionalInput<List<RuleGroupActivatedRule>>(
              map['activatedRules']),
      metricName: pulumi.Input.asInput<String>(map['metricName']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
