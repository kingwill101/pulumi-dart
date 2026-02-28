// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression {
  /// Regular expression string.
  final String? regexString;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression].
  /// [regexString] Regular expression string.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression({
    this.regexString,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regexStringValue = regexString;
    if (regexStringValue != null) {
      map['regexString'] = regexStringValue;
    }
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAntiDdosRuleSetClientSideActionConfigChallengeExemptUriRegularExpression(
      regexString:
          map['regexString'] == null ? null : map['regexString'] as String,
    );
  }
}
