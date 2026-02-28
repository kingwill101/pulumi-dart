// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionBodyContains {
  /// Strings in the body of the response that indicate a failed login attempt.
  final List<String> failureStrings;

  /// Strings in the body of the response that indicate a successful login attempt.
  final List<String> successStrings;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionBodyContains].
  /// [failureStrings] Strings in the body of the response that indicate a failed login attempt.
  /// [successStrings] Strings in the body of the response that indicate a successful login attempt.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionBodyContains({
    required this.failureStrings,
    required this.successStrings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['failureStrings'] = failureStrings;
    map['successStrings'] = successStrings;
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionBodyContains.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionBodyContains(
      failureStrings: (map['failureStrings'] as List).cast<String>(),
      successStrings: (map['successStrings'] as List).cast<String>(),
    );
  }
}
