// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchJsonBodyMatchPattern {
  final pulumi.Input<Map<String, dynamic>?>? all;
  /// List of JSON pointer expressions to inspect (e.g., `/foo/bar`).
  final pulumi.Input<List<String>?>? includedPaths;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchJsonBodyMatchPattern].
  /// [all] Optional.
  /// [includedPaths] List of JSON pointer expressions to inspect (e.g., `/foo/bar`).
  const WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchJsonBodyMatchPattern({
    this.all,
    this.includedPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'includedPaths': ?includedPaths,
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchJsonBodyMatchPattern.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementSqliMatchStatementFieldToMatchJsonBodyMatchPattern(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      includedPaths: (() { final guardedValue = map['includedPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
