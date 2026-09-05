// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_allow_custom_request_handling.dart';

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllow {
  /// Custom request handling configuration. See Custom Request Handling below.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllowCustomRequestHandling?>? customRequestHandling;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllow].
  /// [customRequestHandling] Custom request handling configuration. See Custom Request Handling below.
  const WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllow({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllowCustomRequestHandling, Map<String, dynamic>>(customRequestHandling, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllow.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllow(
      customRequestHandling: (() { final guardedValue = map['customRequestHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllowCustomRequestHandling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
