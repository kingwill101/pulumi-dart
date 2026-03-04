// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_statement.dart';

class RuleGroupRuleStatementOrStatement {
  /// The statements to combine.
  final pulumi.Input<List<RuleGroupRuleStatement>> statements;

  /// Creates a new [RuleGroupRuleStatementOrStatement].
  /// [statements] The statements to combine.
  RuleGroupRuleStatementOrStatement({required this.statements});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'statements':
          pulumi.Input.mapInputValue<
            List<RuleGroupRuleStatement>,
            List<Map<String, dynamic>>
          >(
            statements,
            (value) =>
                pulumi.Input.encodeList<
                  RuleGroupRuleStatement,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory RuleGroupRuleStatementOrStatement.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementOrStatement(
      statements: pulumi.Input.fromValue(
        pulumi.Input.decodeList<RuleGroupRuleStatement>(
          map['statements']!,
          (value) => RuleGroupRuleStatement.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
