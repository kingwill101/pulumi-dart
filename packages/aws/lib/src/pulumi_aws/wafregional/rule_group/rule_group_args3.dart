// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_group_activated_rule/rule_group_activated_rule2.dart';

/// The set of arguments for RuleGroup.
class RuleGroupArgs3 {
  /// A list of activated rules, see below
  final Input<List<RuleGroupActivatedRule2>>? activatedRules;

  /// A friendly name for the metrics from the rule group
  final Input<String> metricName;

  /// A friendly name of the rule group
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  RuleGroupArgs3({
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
      map['activatedRules'] = Input.mapOptionalInputValue<
              List<RuleGroupActivatedRule2>, List<Map<String, dynamic>>>(
          activatedRulesValue,
          (value) =>
              Input.encodeList<RuleGroupActivatedRule2, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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

  factory RuleGroupArgs3.fromMap(Map<String, dynamic> map) {
    return RuleGroupArgs3(
      activatedRules: Input.asOptionalInput<List<RuleGroupActivatedRule2>>(
          map['activatedRules']),
      metricName: Input.asInput<String>(map['metricName']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
