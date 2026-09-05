// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement.dart';

class WebAclRuleStatementNotStatement {
  /// Single statement to negate. Exactly one statement must be specified.
  final pulumi.Input<WebAclRuleStatement?>? statement;

  /// Creates a new [WebAclRuleStatementNotStatement].
  /// [statement] Single statement to negate. Exactly one statement must be specified.
  const WebAclRuleStatementNotStatement({
    this.statement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatement, Map<String, dynamic>>(statement, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementNotStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementNotStatement(
      statement: (() { final guardedValue = map['statement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
