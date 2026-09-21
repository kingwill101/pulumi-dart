// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleStatementRegexMatchStatementFieldToMatchSingleHeader {
  /// The name of the header to inspect. Maximum length of 64. AWS returns header names in lower case, so provide the name as lower case characters to avoid a perpetual diff.
  final pulumi.Input<String> name;

  /// Creates a new [RuleGroupRuleStatementRegexMatchStatementFieldToMatchSingleHeader].
  /// [name] The name of the header to inspect. Maximum length of 64. AWS returns header names in lower case, so provide the name as lower case characters to avoid a perpetual diff.
  const RuleGroupRuleStatementRegexMatchStatementFieldToMatchSingleHeader({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory RuleGroupRuleStatementRegexMatchStatementFieldToMatchSingleHeader.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRegexMatchStatementFieldToMatchSingleHeader(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
