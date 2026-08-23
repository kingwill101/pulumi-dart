// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionJson {
  /// Strings that indicate a failed login or account creation attempt
  final pulumi.Input<List<String>> failureValues;
  /// Identifier for the value to match against in the JSON.
  final pulumi.Input<String> identifier;
  /// Strings that indicate a successful login or account creation attempt
  final pulumi.Input<List<String>> successValues;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionJson].
  /// [failureValues] Strings that indicate a failed login or account creation attempt
  /// [identifier] Identifier for the value to match against in the JSON.
  /// [successValues] Strings that indicate a successful login or account creation attempt
  const WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionJson({
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

  factory WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionJson.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupManagedRuleGroupConfigsAwsManagedRulesAtpRuleSetResponseInspectionJson(
      failureValues: pulumi.Input.fromValue((map['failureValues'] as List).cast<String>()),
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
      successValues: pulumi.Input.fromValue((map['successValues'] as List).cast<String>()),
    );
  }
}
