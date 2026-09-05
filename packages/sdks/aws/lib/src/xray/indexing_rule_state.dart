// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'indexing_rule_rule.dart';

/// Input properties used for looking up and filtering IndexingRule resources.
class IndexingRuleState {
  /// Indexing rule name.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Rule configuration. See `rule` Block below.
  final pulumi.Input<IndexingRuleRule?>? rule;

  /// Creates a new [IndexingRuleState].
  /// [name] Indexing rule name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rule] Rule configuration. See `rule` Block below.
  const IndexingRuleState({
    this.name,
    this.region,
    this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'rule': ?pulumi.Input.mapOptionalInputValue<IndexingRuleRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
    };
  }

  factory IndexingRuleState.fromMap(Map<String, dynamic> map) {
    return IndexingRuleState(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexingRuleRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
