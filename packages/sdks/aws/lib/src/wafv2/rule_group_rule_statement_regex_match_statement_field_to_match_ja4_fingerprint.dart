// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleStatementRegexMatchStatementFieldToMatchJa4Fingerprint {
  /// Match status to assign to the web request if there is insufficient TLS Client Hello information to compute the JA4 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  final pulumi.Input<String> fallbackBehavior;

  /// Creates a new [RuleGroupRuleStatementRegexMatchStatementFieldToMatchJa4Fingerprint].
  /// [fallbackBehavior] Match status to assign to the web request if there is insufficient TLS Client Hello information to compute the JA4 fingerprint. Valid values include: `MATCH` or `NO_MATCH`.
  const RuleGroupRuleStatementRegexMatchStatementFieldToMatchJa4Fingerprint({
    required this.fallbackBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fallbackBehavior': fallbackBehavior,
    };
  }

  factory RuleGroupRuleStatementRegexMatchStatementFieldToMatchJa4Fingerprint.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleStatementRegexMatchStatementFieldToMatchJa4Fingerprint(
      fallbackBehavior: pulumi.Input.fromValue(map['fallbackBehavior'] as String),
    );
  }
}
