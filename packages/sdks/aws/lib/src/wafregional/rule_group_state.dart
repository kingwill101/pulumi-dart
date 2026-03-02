// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_activated_rule.dart';

/// Input properties used for looking up and filtering RuleGroup resources.
class RuleGroupState {
  /// A list of activated rules, see below
  final pulumi.Input<List<RuleGroupActivatedRule>>? activatedRules;
  /// The ARN of the WAF Regional Rule Group.
  final pulumi.Input<String>? arn;
  /// A friendly name for the metrics from the rule group
  final pulumi.Input<String>? metricName;
  /// A friendly name of the rule group
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RuleGroupState].
  /// [activatedRules] A list of activated rules, see below
  /// [arn] The ARN of the WAF Regional Rule Group.
  /// [metricName] A friendly name for the metrics from the rule group
  /// [name] A friendly name of the rule group
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  RuleGroupState({
    this.activatedRules,
    this.arn,
    this.metricName,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedRules': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupActivatedRule>, List<Map<String, dynamic>>>(activatedRules, (value) => pulumi.Input.encodeList<RuleGroupActivatedRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arn': ?arn,
      'metricName': ?metricName,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RuleGroupState.fromMap(Map<String, dynamic> map) {
    return RuleGroupState(
      activatedRules: map['activatedRules'] == null ? null : ((pulumi.Input.decodeList<RuleGroupActivatedRule>(map['activatedRules']!, (value) => RuleGroupActivatedRule.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      metricName: map['metricName'] == null ? null : ((map['metricName'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

