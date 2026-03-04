// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader {
  /// Values in the response header with the specified name that indicate a failed login attempt.
  final pulumi.Input<List<String>> failureValues;

  /// The name of the header to use.
  final pulumi.Input<String> name;

  /// Values in the response header with the specified name that indicate a successful login attempt.
  final pulumi.Input<List<String>> successValues;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader].
  /// [failureValues] Values in the response header with the specified name that indicate a failed login attempt.
  /// [name] The name of the header to use.
  /// [successValues] Values in the response header with the specified name that indicate a successful login attempt.
  WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader({
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

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigAwsManagedRulesAtpRuleSetResponseInspectionHeader(
      failureValues: pulumi.Input.fromValue(
        (map['failureValues'] as List).cast<String>(),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      successValues: pulumi.Input.fromValue(
        (map['successValues'] as List).cast<String>(),
      ),
    );
  }
}
