// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_activated_rule.dart';

/// Input properties used for looking up and filtering RuleGroup resources.
class RuleGroupState {
  /// A list of activated rules, see below
  final pulumi.Input<List<RuleGroupActivatedRule>>? activatedRules;
  /// The ARN of the WAF rule group.
  final pulumi.Input<String>? arn;
  /// A friendly name for the metrics from the rule group
  final pulumi.Input<String>? metricName;
  /// Name of the rule group. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RuleGroupState].
  /// [activatedRules] A list of activated rules, see below
  /// [arn] The ARN of the WAF rule group.
  /// [metricName] A friendly name for the metrics from the rule group
  /// [name] Name of the rule group. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  RuleGroupState({
    pulumi.Output<List<RuleGroupActivatedRule>>? activatedRules,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? metricName,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      activatedRules = pulumi.Input.asOptionalInput<List<RuleGroupActivatedRule>>(activatedRules),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      metricName = pulumi.Input.asOptionalInput<String>(metricName),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedRules': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupActivatedRule>, List<Map<String, dynamic>>>(activatedRules, (value) => pulumi.Input.encodeList<RuleGroupActivatedRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arn': ?arn,
      'metricName': ?metricName,
      'name': ?name,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RuleGroupState.fromMap(Map<String, dynamic> map) {
    return RuleGroupState(
      activatedRules: map['activatedRules'] == null ? null : pulumi.Output.create<List<RuleGroupActivatedRule>>(pulumi.Input.decodeList<RuleGroupActivatedRule>(map['activatedRules'], (value) => RuleGroupActivatedRule.fromMap((value as Map).cast<String, dynamic>()))),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      metricName: map['metricName'] == null ? null : pulumi.Output.create<String>(map['metricName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

