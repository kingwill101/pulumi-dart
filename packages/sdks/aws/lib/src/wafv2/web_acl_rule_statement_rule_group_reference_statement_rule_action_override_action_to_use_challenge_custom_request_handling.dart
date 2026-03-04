// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_challenge_custom_request_handling_insert_header.dart';

class WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallengeCustomRequestHandling {
  /// The `insert_header` blocks used to define HTTP headers added to the request. See `insert_header` below for details.
  final pulumi.Input<
    List<
      WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader
    >
  >
  insertHeaders;

  /// Creates a new [WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallengeCustomRequestHandling].
  /// [insertHeaders] The `insert_header` blocks used to define HTTP headers added to the request. See `insert_header` below for details.
  WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallengeCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertHeaders':
          pulumi.Input.mapInputValue<
            List<
              WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader
            >,
            List<Map<String, dynamic>>
          >(
            insertHeaders,
            (value) =>
                pulumi.Input.encodeList<
                  WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallengeCustomRequestHandling.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallengeCustomRequestHandling(
      insertHeaders: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader
        >(
          map['insertHeaders']!,
          (value) =>
              WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
