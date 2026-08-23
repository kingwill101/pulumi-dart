// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionHeader {
  /// Values in the response header with the specified name that indicate a failed login attempt.
  final pulumi.Input<List<String>> failureValues;
  /// Name of the header to match against. The name must be an exact match, including case.
  final pulumi.Input<String> name;
  /// Values in the response header with the specified name that indicate a successful login attempt.
  final pulumi.Input<List<String>> successValues;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionHeader].
  /// [failureValues] Values in the response header with the specified name that indicate a failed login attempt.
  /// [name] Name of the header to match against. The name must be an exact match, including case.
  /// [successValues] Values in the response header with the specified name that indicate a successful login attempt.
  const WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionHeader({
    required this.failureValues,
    required this.name,
    required this.successValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureValues': failureValues,
      'name': name,
      'successValues': successValues,
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionHeader.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAcfpRuleSetResponseInspectionHeader(
      failureValues: pulumi.Input.fromValue((map['failureValues'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      successValues: pulumi.Input.fromValue((map['successValues'] as List).cast<String>()),
    );
  }
}
