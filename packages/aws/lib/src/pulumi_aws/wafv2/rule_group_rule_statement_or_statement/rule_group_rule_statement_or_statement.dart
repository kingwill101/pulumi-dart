// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../rule_group_rule_statement/rule_group_rule_statement.dart';

class RuleGroupRuleStatementOrStatement {
  /// The statements to combine.
  final List<RuleGroupRuleStatement> statements;

  RuleGroupRuleStatementOrStatement({
    required this.statements,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['statements'] =
        Input.encodeList<RuleGroupRuleStatement, Map<String, dynamic>>(
            statements, (value) => value.toMap());
    return map;
  }

  factory RuleGroupRuleStatementOrStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementOrStatement(
      statements: Input.decodeList<RuleGroupRuleStatement>(
          map['statements'],
          (value) => RuleGroupRuleStatement.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
