// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_challenge_custom_request_handling_insert_header/web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_challenge_custom_request_handling_insert_header.dart';

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallengeCustomRequestHandling {
  /// The `insert_header` blocks used to define HTTP headers added to the request. See `insert_header` below for details.
  final List<
          WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader>
      insertHeaders;

  WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallengeCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insertHeaders'] = pulumi.Input.encodeList<
        WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader,
        Map<String, dynamic>>(insertHeaders, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallengeCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallengeCustomRequestHandling(
      insertHeaders: pulumi.Input.decodeList<
              WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader>(
          map['insertHeaders'],
          (value) =>
              WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
