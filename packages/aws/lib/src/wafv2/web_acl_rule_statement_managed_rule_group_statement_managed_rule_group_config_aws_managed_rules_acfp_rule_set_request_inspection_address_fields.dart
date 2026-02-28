// ignore_for_file: unused_element, unnecessary_cast

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields {
  /// The names of the address fields.
  final List<String> identifiers;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields].
  /// [identifiers] The names of the address fields.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields({
    required this.identifiers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifiers'] = identifiers;
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetRequestInspectionAddressFields(
      identifiers: (map['identifiers'] as List).cast<String>(),
    );
  }
}
