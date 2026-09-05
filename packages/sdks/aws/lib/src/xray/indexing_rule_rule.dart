// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'indexing_rule_rule_probabilistic.dart';

class IndexingRuleRule {
  /// Indexing rule configuration used to probabilistically sample traceIds. See `probabilistic` Block below.
  final pulumi.Input<IndexingRuleRuleProbabilistic?>? probabilistic;

  /// Creates a new [IndexingRuleRule].
  /// [probabilistic] Indexing rule configuration used to probabilistically sample traceIds. See `probabilistic` Block below.
  const IndexingRuleRule({
    this.probabilistic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'probabilistic': ?pulumi.Input.mapOptionalInputValue<IndexingRuleRuleProbabilistic, Map<String, dynamic>>(probabilistic, (value) => value.toMap()),
    };
  }

  factory IndexingRuleRule.fromMap(Map<String, dynamic> map) {
    return IndexingRuleRule(
      probabilistic: (() { final guardedValue = map['probabilistic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IndexingRuleRuleProbabilistic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
