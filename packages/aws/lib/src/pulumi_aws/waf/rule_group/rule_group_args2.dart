// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_group_activated_rule/rule_group_activated_rule.dart';

/// The set of arguments for RuleGroup.
class RuleGroupArgs2 {
  /// A list of activated rules, see below
  final Input<List<RuleGroupActivatedRule>>? activatedRules;

  /// A friendly name for the metrics from the rule group
  final Input<String> metricName;

  /// Name of the rule group. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  final Input<String>? name;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  RuleGroupArgs2({
    this.activatedRules,
    required this.metricName,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activatedRulesValue = activatedRules;
    if (activatedRulesValue != null) {
      map['activatedRules'] = Input.mapOptionalInputValue<
              List<RuleGroupActivatedRule>, List<Map<String, dynamic>>>(
          activatedRulesValue,
          (value) =>
              Input.encodeList<RuleGroupActivatedRule, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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

  factory RuleGroupArgs2.fromMap(Map<String, dynamic> map) {
    return RuleGroupArgs2(
      activatedRules: Input.asOptionalInput<List<RuleGroupActivatedRule>>(
          map['activatedRules']),
      metricName: Input.asInput<String>(map['metricName']),
      name: Input.asOptionalInput<String>(map['name']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
