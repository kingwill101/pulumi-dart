// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains {
  /// Strings in the body of the response that indicate a failed login attempt.
  final pulumi.Input<List<String>> failureStrings;
  /// Strings in the body of the response that indicate a successful login attempt.
  final pulumi.Input<List<String>> successStrings;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains].
  /// [failureStrings] Strings in the body of the response that indicate a failed login attempt.
  /// [successStrings] Strings in the body of the response that indicate a successful login attempt.
  const WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains({
    required this.failureStrings,
    required this.successStrings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureStrings': failureStrings,
      'successStrings': successStrings,
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionBodyContains(
      failureStrings: pulumi.Input.fromValue((map['failureStrings'] as List).cast<String>()),
      successStrings: pulumi.Input.fromValue((map['successStrings'] as List).cast<String>()),
    );
  }
}
