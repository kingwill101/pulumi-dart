// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader {
  /// Name of the header to insert.
  final String name;

  /// Value of the header to insert.
  final String value;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader].
  /// [name] Name of the header to insert.
  /// [value] Value of the header to insert.
  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
