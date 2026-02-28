// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponseResponseHeader {
  /// Name of the response header.
  final String name;

  /// Value of the response header.
  final String value;

  /// Creates a new [WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponseResponseHeader].
  /// [name] Name of the response header.
  /// [value] Value of the response header.
  WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponseResponseHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponseResponseHeader.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponseResponseHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
