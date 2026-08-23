// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rate_based_statement_scope_down_statement.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementNotStatement {
  /// Single statement to negate. Exactly one statement must be specified.
  final pulumi.Input<WebAclRuleStatementRateBasedStatementScopeDownStatement>? statement;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementNotStatement].
  /// [statement] Single statement to negate. Exactly one statement must be specified.
  const WebAclRuleStatementRateBasedStatementScopeDownStatementNotStatement({
    this.statement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRateBasedStatementScopeDownStatement, Map<String, dynamic>>(statement, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementNotStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementNotStatement(
      statement: (() { final guardedValue = map['statement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRateBasedStatementScopeDownStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
