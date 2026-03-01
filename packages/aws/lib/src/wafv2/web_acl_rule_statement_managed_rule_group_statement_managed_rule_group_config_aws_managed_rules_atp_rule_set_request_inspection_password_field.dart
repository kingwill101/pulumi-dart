// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionPasswordField {
  /// The name of the password field.
  final String identifier;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionPasswordField].
  /// [identifier] The name of the password field.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionPasswordField({
    required this.identifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'identifier': identifier};
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionPasswordField.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionPasswordField(
      identifier: map['identifier'] as String,
    );
  }
}
