// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeaderMatchPattern {
  /// An empty configuration block that is used for inspecting all headers.
  final pulumi.Input<Map<String, dynamic>?>? all;
  /// An array of strings that will be used for inspecting headers that do not have a key that matches one of the provided values.
  final pulumi.Input<List<String>?>? excludedHeaders;
  /// An array of strings that will be used for inspecting headers that have a key that matches one of the provided values.
  final pulumi.Input<List<String>?>? includedHeaders;

  /// Creates a new [RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeaderMatchPattern].
  /// [all] An empty configuration block that is used for inspecting all headers.
  /// [excludedHeaders] An array of strings that will be used for inspecting headers that do not have a key that matches one of the provided values.
  /// [includedHeaders] An array of strings that will be used for inspecting headers that have a key that matches one of the provided values.
  const RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeaderMatchPattern({
    this.all,
    this.excludedHeaders,
    this.includedHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'all': ?all,
      'excludedHeaders': ?excludedHeaders,
      'includedHeaders': ?includedHeaders,
    };
  }

  factory RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeaderMatchPattern.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementSqliMatchStatementFieldToMatchHeaderMatchPattern(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      excludedHeaders: (() { final guardedValue = map['excludedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedHeaders: (() { final guardedValue = map['includedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
