// ignore_for_file: unused_element, unnecessary_cast


class WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader {
  /// Name of the header to insert.
  final String name;
  /// Value of the header to insert.
  final String value;

  /// Creates a new [WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader].
  /// [name] Name of the header to insert.
  /// [value] Value of the header to insert.
  WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

