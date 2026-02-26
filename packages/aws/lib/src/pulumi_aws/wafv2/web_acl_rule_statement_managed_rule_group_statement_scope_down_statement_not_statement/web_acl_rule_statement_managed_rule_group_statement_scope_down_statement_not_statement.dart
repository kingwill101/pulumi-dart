// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_rule_statement/web_acl_rule_statement.dart';

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement {
  /// The statements to combine.
  final List<WebAclRuleStatement> statements;

  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement({
    required this.statements,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['statements'] =
        Input.encodeList<WebAclRuleStatement, Map<String, dynamic>>(
            statements, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement(
      statements: Input.decodeList<WebAclRuleStatement>(
          map['statements'],
          (value) => WebAclRuleStatement.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
