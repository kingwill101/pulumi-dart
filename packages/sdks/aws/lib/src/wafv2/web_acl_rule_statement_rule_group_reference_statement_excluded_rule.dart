// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WebAclRuleStatementRuleGroupReferenceStatementExcludedRule {
  /// Name of the rule to exclude from the rule group.
  final pulumi.Input<String> name;

  /// Creates a new [WebAclRuleStatementRuleGroupReferenceStatementExcludedRule].
  /// [name] Name of the rule to exclude from the rule group.
  const WebAclRuleStatementRuleGroupReferenceStatementExcludedRule({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory WebAclRuleStatementRuleGroupReferenceStatementExcludedRule.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRuleGroupReferenceStatementExcludedRule(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
