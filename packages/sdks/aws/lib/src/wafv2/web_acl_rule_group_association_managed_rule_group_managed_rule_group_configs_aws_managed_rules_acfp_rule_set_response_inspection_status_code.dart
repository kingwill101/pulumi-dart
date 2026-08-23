// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode {
  /// Status codes in the response that indicate a failed login attempt.
  final pulumi.Input<List<int>> failureCodes;
  /// Status codes in the response that indicate a successful login attempt.
  final pulumi.Input<List<int>> successCodes;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode].
  /// [failureCodes] Status codes in the response that indicate a failed login attempt.
  /// [successCodes] Status codes in the response that indicate a successful login attempt.
  const WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode({
    required this.failureCodes,
    required this.successCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureCodes': failureCodes,
      'successCodes': successCodes,
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode(
      failureCodes: pulumi.Input.fromValue((map['failureCodes'] as List).cast<int>()),
      successCodes: pulumi.Input.fromValue((map['successCodes'] as List).cast<int>()),
    );
  }
}
