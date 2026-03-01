// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader {
  /// Name of the header to insert.
  final String name;

  /// Value of the header to insert.
  final String value;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader].
  /// [name] Name of the header to insert.
  /// [value] Value of the header to insert.
  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
