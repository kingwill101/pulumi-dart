// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigUsernameField {
  final pulumi.Input<String> identifier;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigUsernameField].
  /// [identifier] Required.
  const WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigUsernameField({
    required this.identifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': identifier,
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigUsernameField.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementManagedRuleGroupConfigUsernameField(
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
    );
  }
}
