// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionStatusCode {
  /// Status codes in the response that indicate a failed login attempt.
  final pulumi.Input<List<int>> failureCodes;
  /// Status codes in the response that indicate a successful login attempt.
  final pulumi.Input<List<int>> successCodes;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionStatusCode].
  /// [failureCodes] Status codes in the response that indicate a failed login attempt.
  /// [successCodes] Status codes in the response that indicate a successful login attempt.
  const WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionStatusCode({
    required this.failureCodes,
    required this.successCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureCodes': failureCodes,
      'successCodes': successCodes,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionStatusCode.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionStatusCode(
      failureCodes: pulumi.Input.fromValue((map['failureCodes'] as List).cast<int>()),
      successCodes: pulumi.Input.fromValue((map['successCodes'] as List).cast<int>()),
    );
  }
}

