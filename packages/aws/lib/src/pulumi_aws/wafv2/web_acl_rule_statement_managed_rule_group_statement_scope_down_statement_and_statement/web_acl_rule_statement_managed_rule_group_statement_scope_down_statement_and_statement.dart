// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_rule_statement/web_acl_rule_statement.dart';

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAndStatement {
  /// The statements to combine.
  final List<WebAclRuleStatement> statements;

  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAndStatement({
    required this.statements,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['statements'] =
        pulumi.Input.encodeList<WebAclRuleStatement, Map<String, dynamic>>(
            statements, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAndStatement.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementAndStatement(
      statements: pulumi.Input.decodeList<WebAclRuleStatement>(
          map['statements'],
          (value) => WebAclRuleStatement.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
