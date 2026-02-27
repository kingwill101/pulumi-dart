// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_allow_custom_request_handling_insert_header/web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_allow_custom_request_handling_insert_header.dart';

class WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllowCustomRequestHandling {
  /// The `insert_header` blocks used to define HTTP headers added to the request. See `insert_header` below for details.
  final List<
          WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader>
      insertHeaders;

  WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllowCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insertHeaders'] = pulumi.Input.encodeList<
        WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader,
        Map<String, dynamic>>(insertHeaders, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllowCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllowCustomRequestHandling(
      insertHeaders: pulumi.Input.decodeList<
              WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader>(
          map['insertHeaders'],
          (value) =>
              WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
