// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementAndStatement {
  /// List of statements to combine. At least one statement is required. Each nested statement supports the same statement types listed above.
  final pulumi.Input<List<WebAclRuleStatementRateBasedStatementScopeDownStatement>?>? statements;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementAndStatement].
  /// [statements] List of statements to combine. At least one statement is required. Each nested statement supports the same statement types listed above.
  const WebAclRuleStatementRateBasedStatementScopeDownStatementAndStatement({
    this.statements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statements': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementRateBasedStatementScopeDownStatement>, List<Map<String, dynamic>>>(statements, (value) => pulumi.Input.encodeList<WebAclRuleStatementRateBasedStatementScopeDownStatement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementAndStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementAndStatement(
      statements: (() { final guardedValue = map['statements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementRateBasedStatementScopeDownStatement>(guardedValue, (value) => WebAclRuleStatementRateBasedStatementScopeDownStatement.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
