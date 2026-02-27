// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../rule_group_rule_statement/rule_group_rule_statement.dart';

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementOrStatement {
  /// The statements to combine.
  final List<RuleGroupRuleStatement> statements;

  RuleGroupRuleStatementRateBasedStatementScopeDownStatementOrStatement({
    required this.statements,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['statements'] =
        pulumi.Input.encodeList<RuleGroupRuleStatement, Map<String, dynamic>>(
            statements, (value) => value.toMap());
    return map;
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementOrStatement.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementOrStatement(
      statements: pulumi.Input.decodeList<RuleGroupRuleStatement>(
          map['statements'],
          (value) => RuleGroupRuleStatement.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
