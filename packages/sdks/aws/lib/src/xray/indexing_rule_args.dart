// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'indexing_rule_rule.dart';

/// {@template pulumi_xray_indexing_rule_indexing_rule_args_doc}
/// The set of arguments for IndexingRule.
/// {@endtemplate}
/// {@macro pulumi_xray_indexing_rule_indexing_rule_args_doc}
class IndexingRuleArgs {
  /// Indexing rule name.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Rule configuration. See `rule` Block below.
  final pulumi.Input<IndexingRuleRule> rule;

  /// Creates a new [IndexingRuleArgs].
  /// [name] Indexing rule name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rule] Rule configuration. See `rule` Block below.
  const IndexingRuleArgs({
    this.name,
    this.region,
    required this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'rule': pulumi.Input.mapInputValue<IndexingRuleRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
    };
  }

  factory IndexingRuleArgs.fromMap(Map<String, dynamic> map) {
    return IndexingRuleArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: pulumi.Input.fromValue(IndexingRuleRule.fromMap((map['rule']! as Map).cast<String, dynamic>())),
    );
  }
}
