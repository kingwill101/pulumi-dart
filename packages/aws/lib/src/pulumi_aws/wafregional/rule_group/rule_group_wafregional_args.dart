// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../rule_group_activated_rule/rule_group_activated_rule_wafregional.dart';

/// The set of arguments for RuleGroup.
class RuleGroupWafregionalArgs {
  /// A list of activated rules, see below
  final pulumi.Input<List<RuleGroupActivatedRuleWafregional>>? activatedRules;

  /// A friendly name for the metrics from the rule group
  final pulumi.Input<String> metricName;

  /// A friendly name of the rule group
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  RuleGroupWafregionalArgs({
    this.activatedRules,
    required this.metricName,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activatedRulesValue = activatedRules;
    if (activatedRulesValue != null) {
      map['activatedRules'] = pulumi.Input.mapOptionalInputValue<
              List<RuleGroupActivatedRuleWafregional>,
              List<Map<String, dynamic>>>(
          activatedRulesValue,
          (value) => pulumi.Input.encodeList<RuleGroupActivatedRuleWafregional,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['metricName'] = metricName;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RuleGroupWafregionalArgs.fromMap(Map<String, dynamic> map) {
    return RuleGroupWafregionalArgs(
      activatedRules:
          pulumi.Input.asOptionalInput<List<RuleGroupActivatedRuleWafregional>>(
              map['activatedRules']),
      metricName: pulumi.Input.asInput<String>(map['metricName']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
