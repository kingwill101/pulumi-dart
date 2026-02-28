// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionUsernameField {
  /// The name of the username field.
  final String identifier;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionUsernameField].
  /// [identifier] The name of the username field.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionUsernameField({
    required this.identifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifier'] = identifier;
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionUsernameField.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetRequestInspectionUsernameField(
      identifier: map['identifier'] as String,
    );
  }
}
