// ignore_for_file: unused_element, unnecessary_cast


class WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader {
  /// Name of the header to insert.
  final String name;
  /// Value of the header to insert.
  final String value;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader].
  /// [name] Name of the header to insert.
  /// [value] Value of the header to insert.
  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

