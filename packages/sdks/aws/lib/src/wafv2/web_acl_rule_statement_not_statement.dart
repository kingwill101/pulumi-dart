// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement.dart';

class WebAclRuleStatementNotStatement {
  /// Single statement to negate. Exactly one statement must be specified. The nested statement supports the statement types listed above except `managedRuleGroupStatement`, `rateBasedStatement` and `ruleGroupReferenceStatement`.
  final pulumi.Input<WebAclRuleStatement> statement;

  /// Creates a new [WebAclRuleStatementNotStatement].
  /// [statement] Single statement to negate. Exactly one statement must be specified. The nested statement supports the statement types listed above except `managedRuleGroupStatement`, `rateBasedStatement` and `ruleGroupReferenceStatement`.
  const WebAclRuleStatementNotStatement({
    required this.statement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statement': pulumi.Input.mapInputValue<WebAclRuleStatement, Map<String, dynamic>>(statement, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementNotStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementNotStatement(
      statement: pulumi.Input.fromValue(WebAclRuleStatement.fromMap((map['statement']! as Map).cast<String, dynamic>())),
    );
  }
}
