// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader {
  /// Name of the header to insert.
  final String name;

  /// Value of the header to insert.
  final String value;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader].
  /// [name] Name of the header to insert.
  /// [value] Value of the header to insert.
  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
