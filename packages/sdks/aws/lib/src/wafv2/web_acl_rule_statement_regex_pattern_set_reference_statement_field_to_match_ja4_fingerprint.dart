// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchJa4Fingerprint {
  /// Action to take if WAF cannot calculate the fingerprint. Valid values: `MATCH`, `NO_MATCH`.
  final pulumi.Input<String> fallbackBehavior;

  /// Creates a new [WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchJa4Fingerprint].
  /// [fallbackBehavior] Action to take if WAF cannot calculate the fingerprint. Valid values: `MATCH`, `NO_MATCH`.
  const WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchJa4Fingerprint({
    required this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackBehavior': fallbackBehavior,
    };
  }

  factory WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchJa4Fingerprint.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRegexPatternSetReferenceStatementFieldToMatchJa4Fingerprint(
      fallbackBehavior: pulumi.Input.fromValue(map['fallbackBehavior'] as String),
    );
  }
}
