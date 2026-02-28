// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigUsernameField {
  /// The name of the username field.
  final String identifier;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigUsernameField].
  /// [identifier] The name of the username field.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigUsernameField({
    required this.identifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifier'] = identifier;
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigUsernameField.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigUsernameField(
      identifier: map['identifier'] as String,
    );
  }
}
