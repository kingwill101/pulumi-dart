// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields {
  /// The names of the phone number fields.
  final List<String> identifiers;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields].
  /// [identifiers] The names of the phone number fields.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields({
    required this.identifiers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'identifiers': identifiers};
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields(
      identifiers: (map['identifiers'] as List).cast<String>(),
    );
  }
}
