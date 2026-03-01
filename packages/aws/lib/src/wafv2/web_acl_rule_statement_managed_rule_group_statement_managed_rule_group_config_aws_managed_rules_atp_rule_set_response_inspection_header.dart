// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader {
  /// Values in the response header with the specified name that indicate a failed login attempt.
  final List<String> failureValues;

  /// The name of the header to use.
  final String name;

  /// Values in the response header with the specified name that indicate a successful login attempt.
  final List<String> successValues;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader].
  /// [failureValues] Values in the response header with the specified name that indicate a failed login attempt.
  /// [name] The name of the header to use.
  /// [successValues] Values in the response header with the specified name that indicate a successful login attempt.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader({
    required this.failureValues,
    required this.name,
    required this.successValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureValues': failureValues,
      'name': name,
      'successValues': successValues,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader(
      failureValues: (map['failureValues'] as List).cast<String>(),
      name: map['name'] as String,
      successValues: (map['successValues'] as List).cast<String>(),
    );
  }
}
