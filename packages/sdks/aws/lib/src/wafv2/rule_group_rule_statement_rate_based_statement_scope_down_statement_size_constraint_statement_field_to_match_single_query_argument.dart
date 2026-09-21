// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleQueryArgument {
  /// The name of the query argument to inspect. Maximum length of 30. AWS returns query argument names in lower case, so provide the name as lower case characters to avoid a perpetual diff.
  final pulumi.Input<String> name;

  /// Creates a new [RuleGroupRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleQueryArgument].
  /// [name] The name of the query argument to inspect. Maximum length of 30. AWS returns query argument names in lower case, so provide the name as lower case characters to avoid a perpetual diff.
  const RuleGroupRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleQueryArgument({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory RuleGroupRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleQueryArgument.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchSingleQueryArgument(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
