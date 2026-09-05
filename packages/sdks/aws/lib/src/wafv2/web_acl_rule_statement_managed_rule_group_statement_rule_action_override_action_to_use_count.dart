// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_count_custom_request_handling.dart';

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCount {
  /// Custom request handling configuration. See Custom Request Handling below.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCountCustomRequestHandling?>? customRequestHandling;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCount].
  /// [customRequestHandling] Custom request handling configuration. See Custom Request Handling below.
  const WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCount({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCountCustomRequestHandling, Map<String, dynamic>>(customRequestHandling, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCount.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCount(
      customRequestHandling: (() { final guardedValue = map['customRequestHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCountCustomRequestHandling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
