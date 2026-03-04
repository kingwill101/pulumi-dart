// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement.dart';

class WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement {
  /// The statements to combine.
  final pulumi.Input<List<WebAclRuleStatement>> statements;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement].
  /// [statements] The statements to combine.
  WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement({
    required this.statements,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statements':
          pulumi.Input.mapInputValue<
            List<WebAclRuleStatement>,
            List<Map<String, dynamic>>
          >(
            statements,
            (value) =>
                pulumi.Input.encodeList<
                  WebAclRuleStatement,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementScopeDownStatementNotStatement(
      statements: pulumi.Input.fromValue(
        pulumi.Input.decodeList<WebAclRuleStatement>(
          map['statements']!,
          (value) => WebAclRuleStatement.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
