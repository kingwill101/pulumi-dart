// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionStatusCode {
  /// Status codes in the response that indicate a failed login attempt.
  final List<int> failureCodes;

  /// Status codes in the response that indicate a successful login attempt.
  final List<int> successCodes;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionStatusCode].
  /// [failureCodes] Status codes in the response that indicate a failed login attempt.
  /// [successCodes] Status codes in the response that indicate a successful login attempt.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionStatusCode({
    required this.failureCodes,
    required this.successCodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['failureCodes'] = failureCodes;
    map['successCodes'] = successCodes;
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionStatusCode.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionStatusCode(
      failureCodes: (map['failureCodes'] as List).cast<int>(),
      successCodes: (map['successCodes'] as List).cast<int>(),
    );
  }
}
