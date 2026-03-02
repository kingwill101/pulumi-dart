// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementAndStatement {
  /// The statements to combine.
  final pulumi.Input<List<RuleGroupRuleStatement>> statements;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementAndStatement].
  /// [statements] The statements to combine.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementAndStatement({
    required this.statements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statements': pulumi.Input.mapInputValue<List<RuleGroupRuleStatement>, List<Map<String, dynamic>>>(statements, (value) => pulumi.Input.encodeList<RuleGroupRuleStatement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementAndStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementAndStatement(
      statements: (pulumi.Input.decodeList<RuleGroupRuleStatement>(map['statements'], (value) => RuleGroupRuleStatement.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

