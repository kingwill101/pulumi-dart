// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigPasswordField {
  /// The name of the password field.
  final String identifier;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigPasswordField].
  /// [identifier] The name of the password field.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigPasswordField({
    required this.identifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifier'] = identifier;
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigPasswordField.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigPasswordField(
      identifier: map['identifier'] as String,
    );
  }
}
