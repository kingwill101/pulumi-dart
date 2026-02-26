// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_allow_custom_request_handling_insert_header/web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_allow_custom_request_handling_insert_header.dart';

class WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllowCustomRequestHandling {
  /// The <span pulumi-lang-nodejs="`insertHeader`" pulumi-lang-dotnet="`InsertHeader`" pulumi-lang-go="`insertHeader`" pulumi-lang-python="`insert_header`" pulumi-lang-yaml="`insertHeader`" pulumi-lang-java="`insertHeader`">`insert_header`</span> blocks used to define HTTP headers added to the request. See <span pulumi-lang-nodejs="`insertHeader`" pulumi-lang-dotnet="`InsertHeader`" pulumi-lang-go="`insertHeader`" pulumi-lang-python="`insert_header`" pulumi-lang-yaml="`insertHeader`" pulumi-lang-java="`insertHeader`">`insert_header`</span> below for details.
  final List<
          WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader>
      insertHeaders;

  WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllowCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insertHeaders'] = Input.encodeList<
        WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader,
        Map<String, dynamic>>(insertHeaders, (value) => value.toMap());
    return map;
  }

  factory WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllowCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllowCustomRequestHandling(
      insertHeaders: Input.decodeList<
              WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader>(
          map['insertHeaders'],
          (value) =>
              WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
