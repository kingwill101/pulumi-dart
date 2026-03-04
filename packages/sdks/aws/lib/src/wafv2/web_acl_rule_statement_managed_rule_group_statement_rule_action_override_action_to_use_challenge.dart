// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_challenge_custom_request_handling.dart';

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallenge {
  /// Defines custom handling for the web request. See `custom_request_handling` below for details.
  final pulumi.Input<
    WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallengeCustomRequestHandling
  >?
  customRequestHandling;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallenge].
  /// [customRequestHandling] Defines custom handling for the web request. See `custom_request_handling` below for details.
  WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallenge({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallengeCustomRequestHandling,
            Map<String, dynamic>
          >(customRequestHandling, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallenge.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallenge(
      customRequestHandling: (() {
        final guardedValue = map['customRequestHandling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallengeCustomRequestHandling.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
