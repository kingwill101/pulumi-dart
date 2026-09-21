// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleHeader {
  /// The name of the header to inspect. Maximum length of 64. AWS returns header names in lower case, so provide the name as lower case characters to avoid a perpetual diff.
  final pulumi.Input<String> name;

  /// Creates a new [RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleHeader].
  /// [name] The name of the header to inspect. Maximum length of 64. AWS returns header names in lower case, so provide the name as lower case characters to avoid a perpetual diff.
  const RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleHeader.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementSqliMatchStatementFieldToMatchSingleHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
