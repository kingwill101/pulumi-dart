// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader {
  /// Values in the response header with the specified name that indicate a failed login attempt.
  final List<String> failureValues;

  /// The name of the header to use.
  final String name;

  /// Values in the response header with the specified name that indicate a successful login attempt.
  final List<String> successValues;

  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader({
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

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader(
      failureValues: (map['failureValues'] as List).cast<String>(),
      name: map['name'] as String,
      successValues: (map['successValues'] as List).cast<String>(),
    );
  }
}
