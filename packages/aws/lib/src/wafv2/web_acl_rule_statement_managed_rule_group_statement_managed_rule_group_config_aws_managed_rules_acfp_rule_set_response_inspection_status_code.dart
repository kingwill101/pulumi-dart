// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode {
  /// Status codes in the response that indicate a failed login attempt.
  final List<int> failureCodes;

  /// Status codes in the response that indicate a successful login attempt.
  final List<int> successCodes;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode].
  /// [failureCodes] Status codes in the response that indicate a failed login attempt.
  /// [successCodes] Status codes in the response that indicate a successful login attempt.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode({
    required this.failureCodes,
    required this.successCodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['failureCodes'] = failureCodes;
    map['successCodes'] = successCodes;
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode(
      failureCodes: (map['failureCodes'] as List).cast<int>(),
      successCodes: (map['successCodes'] as List).cast<int>(),
    );
  }
}
