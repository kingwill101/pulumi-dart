// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementAndStatement {
  /// List of statements to combine. At least two statements are required. Each nested statement supports the statement types listed above except `andStatement`, `managedRuleGroupStatement`, `rateBasedStatement` and `ruleGroupReferenceStatement`.
  final pulumi.Input<List<WebAclRuleStatementRateBasedStatementScopeDownStatement>> statements;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementAndStatement].
  /// [statements] List of statements to combine. At least two statements are required. Each nested statement supports the statement types listed above except `andStatement`, `managedRuleGroupStatement`, `rateBasedStatement` and `ruleGroupReferenceStatement`.
  const WebAclRuleStatementRateBasedStatementScopeDownStatementAndStatement({
    required this.statements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statements': pulumi.Input.mapInputValue<List<WebAclRuleStatementRateBasedStatementScopeDownStatement>, List<Map<String, dynamic>>>(statements, (value) => pulumi.Input.encodeList<WebAclRuleStatementRateBasedStatementScopeDownStatement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementAndStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementAndStatement(
      statements: pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementRateBasedStatementScopeDownStatement>(map['statements']!, (value) => WebAclRuleStatementRateBasedStatementScopeDownStatement.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
