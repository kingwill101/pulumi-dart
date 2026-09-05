// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_block_custom_response.dart';

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlock {
  /// Custom response configuration. See Custom Response below.
  final pulumi.Input<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponse?>? customResponse;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlock].
  /// [customResponse] Custom response configuration. See Custom Response below.
  const WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlock({
    this.customResponse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customResponse': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponse, Map<String, dynamic>>(customResponse, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlock.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlock(
      customResponse: (() { final guardedValue = map['customResponse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
