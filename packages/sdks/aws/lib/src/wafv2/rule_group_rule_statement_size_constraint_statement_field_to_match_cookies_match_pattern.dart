// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleStatementSizeConstraintStatementFieldToMatchCookiesMatchPattern {
  /// An empty configuration block that is used for inspecting all headers.
  final pulumi.Input<Map<String, dynamic>>? all;
  final pulumi.Input<List<String>>? excludedCookies;
  final pulumi.Input<List<String>>? includedCookies;

  /// Creates a new [RuleGroupRuleStatementSizeConstraintStatementFieldToMatchCookiesMatchPattern].
  /// [all] An empty configuration block that is used for inspecting all headers.
  /// [excludedCookies] Optional.
  /// [includedCookies] Optional.
  RuleGroupRuleStatementSizeConstraintStatementFieldToMatchCookiesMatchPattern({
    this.all,
    this.excludedCookies,
    this.includedCookies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'excludedCookies': ?excludedCookies,
      'includedCookies': ?includedCookies,
    };
  }

  factory RuleGroupRuleStatementSizeConstraintStatementFieldToMatchCookiesMatchPattern.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementSizeConstraintStatementFieldToMatchCookiesMatchPattern(
      all: map['all'] == null ? null : ((map['all'] as Map).cast<String, dynamic>()).input(),
      excludedCookies: map['excludedCookies'] == null ? null : ((map['excludedCookies'] as List).cast<String>()).input(),
      includedCookies: map['includedCookies'] == null ? null : ((map['includedCookies'] as List).cast<String>()).input(),
    );
  }
}

