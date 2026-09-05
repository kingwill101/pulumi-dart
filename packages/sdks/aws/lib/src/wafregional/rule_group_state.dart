// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_activated_rule.dart';

/// Input properties used for looking up and filtering RuleGroup resources.
class RuleGroupState {
  /// A list of activated rules, see below
  final pulumi.Input<List<RuleGroupActivatedRule>?>? activatedRules;
  /// The ARN of the WAF Regional Rule Group.
  final pulumi.Input<String?>? arn;
  /// A friendly name for the metrics from the rule group
  final pulumi.Input<String?>? metricName;
  /// A friendly name of the rule group
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [RuleGroupState].
  /// [activatedRules] A list of activated rules, see below
  /// [arn] The ARN of the WAF Regional Rule Group.
  /// [metricName] A friendly name for the metrics from the rule group
  /// [name] A friendly name of the rule group
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const RuleGroupState({
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
      activatedRules: (() { final guardedValue = map['activatedRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupActivatedRule>(guardedValue, (value) => RuleGroupActivatedRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricName: (() { final guardedValue = map['metricName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
