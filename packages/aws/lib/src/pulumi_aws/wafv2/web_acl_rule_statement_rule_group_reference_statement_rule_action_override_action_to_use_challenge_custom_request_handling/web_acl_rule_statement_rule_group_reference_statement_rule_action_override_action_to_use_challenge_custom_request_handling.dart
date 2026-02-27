// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_challenge_custom_request_handling_insert_header/web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_challenge_custom_request_handling_insert_header.dart';

class WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallengeCustomRequestHandling {
  /// The `insert_header` blocks used to define HTTP headers added to the request. See `insert_header` below for details.
  final List<
          WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader>
      insertHeaders;

  WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallengeCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insertHeaders'] = pulumi.Input.encodeList<
        WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader,
        Map<String, dynamic>>(insertHeaders, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallengeCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallengeCustomRequestHandling(
      insertHeaders: pulumi.Input.decodeList<
              WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader>(
          map['insertHeaders'],
          (value) =>
              WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
