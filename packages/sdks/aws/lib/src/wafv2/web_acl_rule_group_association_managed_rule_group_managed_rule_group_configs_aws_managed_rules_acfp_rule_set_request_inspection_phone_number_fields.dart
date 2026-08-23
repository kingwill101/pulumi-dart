// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields {
  /// Names of the phone number fields.
  final pulumi.Input<List<String>> identifiers;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields].
  /// [identifiers] Names of the phone number fields.
  const WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields({
    required this.identifiers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifiers': identifiers,
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetRequestInspectionPhoneNumberFields(
      identifiers: pulumi.Input.fromValue((map['identifiers'] as List).cast<String>()),
    );
  }
}
