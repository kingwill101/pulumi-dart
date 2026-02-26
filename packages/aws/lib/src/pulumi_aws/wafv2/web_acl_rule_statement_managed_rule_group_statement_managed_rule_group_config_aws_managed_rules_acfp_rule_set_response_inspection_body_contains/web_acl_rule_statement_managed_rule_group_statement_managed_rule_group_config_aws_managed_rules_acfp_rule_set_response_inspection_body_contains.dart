// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains {
  /// Strings in the body of the response that indicate a failed login attempt.
  final List<String> failureStrings;

  /// Strings in the body of the response that indicate a successful login attempt.
  final List<String> successStrings;

  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains({
    required this.failureStrings,
    required this.successStrings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['failureStrings'] = failureStrings;
    map['successStrings'] = successStrings;
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains(
      failureStrings: (map['failureStrings'] as List).cast<String>(),
      successStrings: (map['successStrings'] as List).cast<String>(),
    );
  }
}
