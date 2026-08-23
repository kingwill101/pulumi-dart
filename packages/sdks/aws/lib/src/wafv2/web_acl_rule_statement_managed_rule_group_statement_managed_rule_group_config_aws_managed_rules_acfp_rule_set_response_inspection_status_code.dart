// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode {
  final pulumi.Input<List<int>> failureCodes;
  final pulumi.Input<List<int>> successCodes;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode].
  /// [failureCodes] Required.
  /// [successCodes] Required.
  const WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode({
    required this.failureCodes,
    required this.successCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureCodes': failureCodes,
      'successCodes': successCodes,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionStatusCode(
      failureCodes: pulumi.Input.fromValue((map['failureCodes'] as List).cast<int>()),
      successCodes: pulumi.Input.fromValue((map['successCodes'] as List).cast<int>()),
    );
  }
}
