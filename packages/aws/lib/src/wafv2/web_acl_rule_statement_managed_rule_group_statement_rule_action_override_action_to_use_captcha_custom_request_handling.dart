// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_captcha_custom_request_handling_insert_header.dart';

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandling {
  /// The `insert_header` blocks used to define HTTP headers added to the request. See `insert_header` below for details.
  final List<
    WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader
  >
  insertHeaders;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandling].
  /// [insertHeaders] The `insert_header` blocks used to define HTTP headers added to the request. See `insert_header` below for details.
  WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertHeaders':
          pulumi.Input.encodeList<
            WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader,
            Map<String, dynamic>
          >(insertHeaders, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandling.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandling(
      insertHeaders:
          pulumi.Input.decodeList<
            WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader
          >(
            map['insertHeaders'],
            (value) =>
                WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
