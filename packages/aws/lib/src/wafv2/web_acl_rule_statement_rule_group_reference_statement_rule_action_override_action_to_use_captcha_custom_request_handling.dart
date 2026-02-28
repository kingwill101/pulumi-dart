// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_captcha_custom_request_handling_insert_header.dart';

class WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandling {
  /// The `insert_header` blocks used to define HTTP headers added to the request. See `insert_header` below for details.
  final List<
          WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader>
      insertHeaders;

  /// Creates a new [WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandling].
  /// [insertHeaders] The `insert_header` blocks used to define HTTP headers added to the request. See `insert_header` below for details.
  WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insertHeaders'] = pulumi.Input.encodeList<
        WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader,
        Map<String, dynamic>>(insertHeaders, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandling(
      insertHeaders: pulumi.Input.decodeList<
              WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader>(
          map['insertHeaders'],
          (value) =>
              WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptchaCustomRequestHandlingInsertHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
