// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchJsonBodyMatchPattern {
  /// An empty configuration block that is used for inspecting all headers.
  final pulumi.Input<Map<String, dynamic>>? all;
  final pulumi.Input<List<String>>? includedPaths;

  /// Creates a new [RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchJsonBodyMatchPattern].
  /// [all] An empty configuration block that is used for inspecting all headers.
  /// [includedPaths] Optional.
  RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchJsonBodyMatchPattern({
    this.all,
    this.includedPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'all': ?all, 'includedPaths': ?includedPaths};
  }

  factory RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchJsonBodyMatchPattern.fromMap(
    Map<String, dynamic> map,
  ) {
    return RuleGroupRuleStatementRegexPatternSetReferenceStatementFieldToMatchJsonBodyMatchPattern(
      all: (() {
        final guardedValue = map['all'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      includedPaths: (() {
        final guardedValue = map['includedPaths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
