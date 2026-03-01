// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement.dart';

class WebAclRuleStatementRateBasedStatementScopeDownStatementOrStatement {
  /// The statements to combine.
  final List<WebAclRuleStatement> statements;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementOrStatement].
  /// [statements] The statements to combine.
  WebAclRuleStatementRateBasedStatementScopeDownStatementOrStatement({
    required this.statements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statements': pulumi.Input.encodeList<WebAclRuleStatement, Map<String, dynamic>>(statements, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementOrStatement.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementOrStatement(
      statements: pulumi.Input.decodeList<WebAclRuleStatement>(map['statements'], (value) => WebAclRuleStatement.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

