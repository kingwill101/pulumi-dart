// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchJsonBodyMatchPattern {
  final pulumi.Input<Map<String, dynamic>?>? all;
  /// List of JSON pointer expressions to inspect (e.g., `/foo/bar`).
  final pulumi.Input<List<String>?>? includedPaths;

  /// Creates a new [WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchJsonBodyMatchPattern].
  /// [all] Optional.
  /// [includedPaths] List of JSON pointer expressions to inspect (e.g., `/foo/bar`).
  const WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchJsonBodyMatchPattern({
    this.all,
    this.includedPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'includedPaths': ?includedPaths,
    };
  }

  factory WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchJsonBodyMatchPattern.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRateBasedStatementScopeDownStatementSizeConstraintStatementFieldToMatchJsonBodyMatchPattern(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      includedPaths: (() { final guardedValue = map['includedPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
