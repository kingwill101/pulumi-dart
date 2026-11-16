// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementNotStatement {
  /// Single statement to negate. Exactly one statement must be specified. The nested statement supports the statement types listed above except `managedRuleGroupStatement`, `rateBasedStatement` and `ruleGroupReferenceStatement`.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatement> statement;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementNotStatement].
  /// [statement] Single statement to negate. Exactly one statement must be specified. The nested statement supports the statement types listed above except `managedRuleGroupStatement`, `rateBasedStatement` and `ruleGroupReferenceStatement`.
  const WebAclRuleStatementRateBasedStatementScopeDownStatementNotStatement({
    required this.statement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statement': pulumi.Input.mapInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatement, Map<String, dynamic>>(statement, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementNotStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementNotStatement(
      statement: pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatement.fromMap((map['statement']! as Map).cast<String, dynamic>())),
    );
  }
}
