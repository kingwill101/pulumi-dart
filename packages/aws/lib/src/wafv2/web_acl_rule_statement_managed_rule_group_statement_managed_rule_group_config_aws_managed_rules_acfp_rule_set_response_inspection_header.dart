// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionHeader {
  /// Values in the response header with the specified name that indicate a failed login attempt.
  final List<String> failureValues;

  /// The name of the header to use.
  final String name;

  /// Values in the response header with the specified name that indicate a successful login attempt.
  final List<String> successValues;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionHeader].
  /// [failureValues] Values in the response header with the specified name that indicate a failed login attempt.
  /// [name] The name of the header to use.
  /// [successValues] Values in the response header with the specified name that indicate a successful login attempt.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionHeader({
    required this.failureValues,
    required this.name,
    required this.successValues,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['failureValues'] = failureValues;
    map['name'] = name;
    map['successValues'] = successValues;
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionHeader.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionHeader(
      failureValues: (map['failureValues'] as List).cast<String>(),
      name: map['name'] as String,
      successValues: (map['successValues'] as List).cast<String>(),
    );
  }
}
