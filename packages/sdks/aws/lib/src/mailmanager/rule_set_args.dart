// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_set_rule.dart';

/// {@template pulumi_mailmanager_rule_set_rule_set_args_doc}
/// The set of arguments for RuleSet.
/// {@endtemplate}
/// {@macro pulumi_mailmanager_rule_set_rule_set_args_doc}
class RuleSetArgs {
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

  /// Creates a new [RuleSetArgs].
  /// [name] Name of the rule set.
  /// [region] Region where this resource is managed.
  /// [rules] One or more rules that define filtering and action logic. Up to 40 rules are supported. See `rule` Block.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const RuleSetArgs({
    this.name,
    this.region,
    this.rules,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<RuleSetRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<RuleSetRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory RuleSetArgs.fromMap(Map<String, dynamic> map) {
    return RuleSetArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RuleSetRule>(guardedValue, (value) => RuleSetRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
