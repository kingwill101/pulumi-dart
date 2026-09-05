// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement.dart';

class WebAclRuleStatementOrStatement {
  /// List of statements to combine. At least one statement is required. Each nested statement supports the same statement types listed above.
  final pulumi.Input<List<WebAclRuleStatement>?>? statements;

  /// Creates a new [WebAclRuleStatementOrStatement].
  /// [statements] List of statements to combine. At least one statement is required. Each nested statement supports the same statement types listed above.
  const WebAclRuleStatementOrStatement({
    this.statements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statements': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatement>, List<Map<String, dynamic>>>(statements, (value) => pulumi.Input.encodeList<WebAclRuleStatement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementOrStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementOrStatement(
      statements: (() { final guardedValue = map['statements']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatement>(guardedValue, (value) => WebAclRuleStatement.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
