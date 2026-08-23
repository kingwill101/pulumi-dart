// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchCookiesMatchPattern {
  final pulumi.Input<Map<String, dynamic>>? all;
  /// List of cookie names to exclude from inspection.
  final pulumi.Input<List<String>>? excludedCookies;
  /// List of cookie names to inspect.
  final pulumi.Input<List<String>>? includedCookies;

  /// Creates a new [WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchCookiesMatchPattern].
  /// [all] Optional.
  /// [excludedCookies] List of cookie names to exclude from inspection.
  /// [includedCookies] List of cookie names to inspect.
  const WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchCookiesMatchPattern({
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

  factory WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchCookiesMatchPattern.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchCookiesMatchPattern(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      excludedCookies: (() { final guardedValue = map['excludedCookies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedCookies: (() { final guardedValue = map['includedCookies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
