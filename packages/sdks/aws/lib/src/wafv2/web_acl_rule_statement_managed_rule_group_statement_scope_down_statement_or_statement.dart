// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement.dart';

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementOrStatement {
  /// List of statements to combine. At least one statement is required. Each nested statement supports the same statement types listed above.
  final pulumi.Input<List<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement>?>? statements;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementOrStatement].
  /// [statements] List of statements to combine. At least one statement is required. Each nested statement supports the same statement types listed above.
  const WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementOrStatement({
    this.statements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statements': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement>, List<Map<String, dynamic>>>(statements, (value) => pulumi.Input.encodeList<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementOrStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementOrStatement(
      statements: (() { final guardedValue = map['statements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement>(guardedValue, (value) => WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
