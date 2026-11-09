// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement.dart';

class WebAclRuleStatementOrStatement {
  /// List of statements to combine. At least two statements are required. Each nested statement supports the statement types listed above except `managedRuleGroupStatement`, `orStatement`, `rateBasedStatement` and `ruleGroupReferenceStatement`.
  final pulumi.Input<List<WebAclRuleStatement>> statements;

  /// Creates a new [WebAclRuleStatementOrStatement].
  /// [statements] List of statements to combine. At least two statements are required. Each nested statement supports the statement types listed above except `managedRuleGroupStatement`, `orStatement`, `rateBasedStatement` and `ruleGroupReferenceStatement`.
  const WebAclRuleStatementOrStatement({
    required this.statements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statements': pulumi.Input.mapInputValue<List<WebAclRuleStatement>, List<Map<String, dynamic>>>(statements, (value) => pulumi.Input.encodeList<WebAclRuleStatement, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementOrStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementOrStatement(
      statements: pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatement>(map['statements']!, (value) => WebAclRuleStatement.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
