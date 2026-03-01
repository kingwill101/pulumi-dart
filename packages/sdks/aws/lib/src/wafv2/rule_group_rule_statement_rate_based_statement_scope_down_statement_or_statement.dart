// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementOrStatement {
  /// The statements to combine.
  final List<RuleGroupRuleStatement> statements;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementOrStatement].
  /// [statements] The statements to combine.
  RuleGroupRuleStatementRateBasedStatementScopeDownStatementOrStatement({
    required this.statements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statements': pulumi.Input.encodeList<RuleGroupRuleStatement, Map<String, dynamic>>(statements, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementOrStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementOrStatement(
      statements: pulumi.Input.decodeList<RuleGroupRuleStatement>(map['statements'], (value) => RuleGroupRuleStatement.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

