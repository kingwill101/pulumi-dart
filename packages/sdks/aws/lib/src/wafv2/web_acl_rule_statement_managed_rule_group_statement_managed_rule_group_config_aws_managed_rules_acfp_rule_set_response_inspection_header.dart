// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionHeader {
  final pulumi.Input<List<String>> failureValues;
  /// Name of the rule. Must be unique within the Web ACL.
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> successValues;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionHeader].
  /// [failureValues] Required.
  /// [name] Name of the rule. Must be unique within the Web ACL.
  /// [successValues] Required.
  const WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionHeader({
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

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionHeader.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAcfpRuleSetResponseInspectionHeader(
      failureValues: pulumi.Input.fromValue((map['failureValues'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      successValues: pulumi.Input.fromValue((map['successValues'] as List).cast<String>()),
    );
  }
}
