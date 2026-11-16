// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement.dart';

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAndStatement {
  /// List of statements to combine. At least two statements are required. Each nested statement supports the statement types listed above except `andStatement`, `managedRuleGroupStatement`, `rateBasedStatement` and `ruleGroupReferenceStatement`.
  final pulumi.Input<List<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement>> statements;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAndStatement].
  /// [statements] List of statements to combine. At least two statements are required. Each nested statement supports the statement types listed above except `andStatement`, `managedRuleGroupStatement`, `rateBasedStatement` and `ruleGroupReferenceStatement`.
  const WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAndStatement({
    required this.statements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statements': pulumi.Input.mapInputValue<List<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement>, List<Map<String, dynamic>>>(statements, (value) => pulumi.Input.encodeList<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAndStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAndStatement(
      statements: pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement>(map['statements']!, (value) => WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
