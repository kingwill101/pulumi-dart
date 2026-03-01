// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader {
  /// Name of the header to insert.
  final String name;

  /// Value of the header to insert.
  final String value;

  /// Creates a new [WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader].
  /// [name] Name of the header to insert.
  /// [value] Value of the header to insert.
  WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
