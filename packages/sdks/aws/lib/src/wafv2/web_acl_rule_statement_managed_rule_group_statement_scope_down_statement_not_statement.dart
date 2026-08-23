// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_scope_down_statement.dart';

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement {
  /// Single statement to negate. Exactly one statement must be specified.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement>? statement;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement].
  /// [statement] Single statement to negate. Exactly one statement must be specified.
  const WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement({
    this.statement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement, Map<String, dynamic>>(statement, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement(
      statement: (() { final guardedValue = map['statement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementScopeDownStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
