// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementNotStatement {
  /// The statement to negate. You can use any statement that can be nested. See Statement above for details.
  final pulumi.Input<List<RuleGroupRuleStatement>> statements;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementNotStatement].
  /// [statements] The statement to negate. You can use any statement that can be nested. See Statement above for details.
  const RuleGroupRuleStatementRateBasedStatementScopeDownStatementNotStatement({
    required this.statements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statements': pulumi.Input.mapInputValue<List<RuleGroupRuleStatement>, List<Map<String, dynamic>>>(statements, (value) => pulumi.Input.encodeList<RuleGroupRuleStatement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementNotStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementNotStatement(
      statements: pulumi.Input.fromValue(pulumi.Input.decodeList<RuleGroupRuleStatement>(map['statements']!, (value) => RuleGroupRuleStatement.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
