// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace {
  /// The namespace to use for aggregation
  final pulumi.Input<String> namespace;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace].
  /// [namespace] The namespace to use for aggregation
  RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace({
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': namespace,
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementCustomKeyLabelNamespace(
      namespace: (map['namespace'] as String).input(),
    );
  }
}

