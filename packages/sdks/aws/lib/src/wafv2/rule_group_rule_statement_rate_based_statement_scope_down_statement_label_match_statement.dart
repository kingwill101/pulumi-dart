// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementLabelMatchStatement {
  /// The string to match against.
  final pulumi.Input<String> key;
  /// Specify whether you want to match using the label name or just the namespace. Valid values are `LABEL` or `NAMESPACE`.
  final pulumi.Input<String> scope;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementLabelMatchStatement].
  /// [key] The string to match against.
  /// [scope] Specify whether you want to match using the label name or just the namespace. Valid values are `LABEL` or `NAMESPACE`.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementLabelMatchStatement({
    required this.key,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'scope': scope,
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementLabelMatchStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementLabelMatchStatement(
      key: pulumi.Input.fromValue(map['key'] as String),
      scope: pulumi.Input.fromValue(map['scope'] as String),
    );
  }
}

