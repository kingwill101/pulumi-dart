// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementRegexMatchStatementFieldToMatchJa3Fingerprint {
  /// Action to take if WAF cannot calculate the fingerprint. Valid values: `MATCH`, `NO_MATCH`.
  final pulumi.Input<String> fallbackBehavior;

  /// Creates a new [WebAclRuleStatementRegexMatchStatementFieldToMatchJa3Fingerprint].
  /// [fallbackBehavior] Action to take if WAF cannot calculate the fingerprint. Valid values: `MATCH`, `NO_MATCH`.
  const WebAclRuleStatementRegexMatchStatementFieldToMatchJa3Fingerprint({
    required this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackBehavior': fallbackBehavior,
    };
  }

  factory WebAclRuleStatementRegexMatchStatementFieldToMatchJa3Fingerprint.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRegexMatchStatementFieldToMatchJa3Fingerprint(
      fallbackBehavior: pulumi.Input.fromValue(map['fallbackBehavior'] as String),
    );
  }
}
