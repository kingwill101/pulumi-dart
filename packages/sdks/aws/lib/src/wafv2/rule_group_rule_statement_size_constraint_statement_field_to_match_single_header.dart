// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleStatementSizeConstraintStatementFieldToMatchSingleHeader {
  /// The name of the header to inspect. Maximum length of 64. AWS returns header names in lower case, so provide the name as lower case characters to avoid a perpetual diff.
  final pulumi.Input<String> name;

  /// Creates a new [RuleGroupRuleStatementSizeConstraintStatementFieldToMatchSingleHeader].
  /// [name] The name of the header to inspect. Maximum length of 64. AWS returns header names in lower case, so provide the name as lower case characters to avoid a perpetual diff.
  const RuleGroupRuleStatementSizeConstraintStatementFieldToMatchSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory RuleGroupRuleStatementSizeConstraintStatementFieldToMatchSingleHeader.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementSizeConstraintStatementFieldToMatchSingleHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
