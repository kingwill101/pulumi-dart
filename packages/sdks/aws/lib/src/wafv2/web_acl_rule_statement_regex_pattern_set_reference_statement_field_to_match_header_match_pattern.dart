// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchHeaderMatchPattern {
  final pulumi.Input<Map<String, dynamic>?>? all;
  /// List of header names to exclude from inspection.
  final pulumi.Input<List<String>?>? excludedHeaders;
  /// List of header names to inspect.
  final pulumi.Input<List<String>?>? includedHeaders;

  /// Creates a new [WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchHeaderMatchPattern].
  /// [all] Optional.
  /// [excludedHeaders] List of header names to exclude from inspection.
  /// [includedHeaders] List of header names to inspect.
  const WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchHeaderMatchPattern({
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

  factory WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchHeaderMatchPattern.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchHeaderMatchPattern(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      excludedHeaders: (() { final guardedValue = map['excludedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedHeaders: (() { final guardedValue = map['includedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
