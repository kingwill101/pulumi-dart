// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleStatementXssMatchStatementFieldToMatchHeaderMatchPattern {
  /// Empty configuration block that is used for inspecting all headers.
  final pulumi.Input<Map<String, dynamic>?>? all;
  /// Array of strings that will be used for inspecting headers that do not have a key that matches one of the provided values.
  final pulumi.Input<List<String>?>? excludedHeaders;
  /// Array of strings that will be used for inspecting headers that have a key that matches one of the provided values.
  final pulumi.Input<List<String>?>? includedHeaders;

  /// Creates a new [RuleGroupRuleStatementXssMatchStatementFieldToMatchHeaderMatchPattern].
  /// [all] Empty configuration block that is used for inspecting all headers.
  /// [excludedHeaders] Array of strings that will be used for inspecting headers that do not have a key that matches one of the provided values.
  /// [includedHeaders] Array of strings that will be used for inspecting headers that have a key that matches one of the provided values.
  const RuleGroupRuleStatementXssMatchStatementFieldToMatchHeaderMatchPattern({
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

  factory RuleGroupRuleStatementXssMatchStatementFieldToMatchHeaderMatchPattern.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementXssMatchStatementFieldToMatchHeaderMatchPattern(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      excludedHeaders: (() { final guardedValue = map['excludedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedHeaders: (() { final guardedValue = map['includedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
