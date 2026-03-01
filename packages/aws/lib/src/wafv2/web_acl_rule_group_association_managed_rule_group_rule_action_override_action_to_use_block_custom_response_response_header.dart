// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponseResponseHeader {
  /// Name of the response header.
  final String name;

  /// Value of the response header.
  final String value;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponseResponseHeader].
  /// [name] Name of the response header.
  /// [value] Value of the response header.
  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponseResponseHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponseResponseHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponseResponseHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
