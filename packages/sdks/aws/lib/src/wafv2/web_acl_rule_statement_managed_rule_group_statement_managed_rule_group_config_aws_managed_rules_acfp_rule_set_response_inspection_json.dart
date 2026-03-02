// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionJson {
  /// Values in the response header with the specified name that indicate a failed login attempt.
  final pulumi.Input<List<String>> failureValues;
  /// The identifier for the value to match against in the JSON.
  final pulumi.Input<String> identifier;
  /// Values in the response header with the specified name that indicate a successful login attempt.
  final pulumi.Input<List<String>> successValues;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionJson].
  /// [failureValues] Values in the response header with the specified name that indicate a failed login attempt.
  /// [identifier] The identifier for the value to match against in the JSON.
  /// [successValues] Values in the response header with the specified name that indicate a successful login attempt.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionJson({
    required this.failureValues,
    required this.identifier,
    required this.successValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureValues': failureValues,
      'identifier': identifier,
      'successValues': successValues,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionJson.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionJson(
      failureValues: ((map['failureValues'] as List).cast<String>()).input(),
      identifier: (map['identifier'] as String).input(),
      successValues: ((map['successValues'] as List).cast<String>()).input(),
    );
  }
}

