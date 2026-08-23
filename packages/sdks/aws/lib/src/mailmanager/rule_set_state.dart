// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_set_rule.dart';

/// Input properties used for looking up and filtering RuleSet resources.
class RuleSetState {
  /// ARN of the rule set.
  final pulumi.Input<String>? arn;
  /// Date and time when the rule set was created.
  final pulumi.Input<String>? createdDate;
  /// Date and time when the rule set was last modified.
  final pulumi.Input<String>? lastModificationDate;
  /// Name of the rule set.
  final pulumi.Input<String>? name;
  /// Region where this resource is managed.
  final pulumi.Input<String>? region;
  /// One or more rules that define filtering and action logic. Up to 40 rules are supported. See `rule` Block.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<RuleSetRule>>? rules;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RuleSetState].
  /// [arn] ARN of the rule set.
  /// [createdDate] Date and time when the rule set was created.
  /// [lastModificationDate] Date and time when the rule set was last modified.
  /// [name] Name of the rule set.
  /// [region] Region where this resource is managed.
  /// [rules] One or more rules that define filtering and action logic. Up to 40 rules are supported. See `rule` Block.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const RuleSetState({
    this.arn,
    this.createdDate,
    this.lastModificationDate,
    this.name,
    this.region,
    this.rules,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdDate': ?createdDate,
      'lastModificationDate': ?lastModificationDate,
      'name': ?name,
      'region': ?region,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RuleSetRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RuleSetRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RuleSetState.fromMap(Map<String, dynamic> map) {
    return RuleSetState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdDate: (() { final guardedValue = map['createdDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModificationDate: (() { final guardedValue = map['lastModificationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleSetRule>(guardedValue, (value) => RuleSetRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
