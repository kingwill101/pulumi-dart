// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementRegexMatchStatementFieldToMatchCookiesMatchPattern {
  final pulumi.Input<Map<String, dynamic>>? all;
  /// List of cookie names to exclude from inspection.
  final pulumi.Input<List<String>>? excludedCookies;
  /// List of cookie names to inspect.
  final pulumi.Input<List<String>>? includedCookies;

  /// Creates a new [WebAclRuleStatementRegexMatchStatementFieldToMatchCookiesMatchPattern].
  /// [all] Optional.
  /// [excludedCookies] List of cookie names to exclude from inspection.
  /// [includedCookies] List of cookie names to inspect.
  const WebAclRuleStatementRegexMatchStatementFieldToMatchCookiesMatchPattern({
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

  factory WebAclRuleStatementRegexMatchStatementFieldToMatchCookiesMatchPattern.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRegexMatchStatementFieldToMatchCookiesMatchPattern(
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      excludedCookies: (() { final guardedValue = map['excludedCookies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includedCookies: (() { final guardedValue = map['includedCookies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
