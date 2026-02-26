// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_block_custom_response_response_header/web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_block_custom_response_response_header.dart';

class WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlockCustomResponse {
  /// References the response body that you want AWS WAF to return to the web request client. This must reference a <span pulumi-lang-nodejs="`key`" pulumi-lang-dotnet="`Key`" pulumi-lang-go="`key`" pulumi-lang-python="`key`" pulumi-lang-yaml="`key`" pulumi-lang-java="`key`">`key`</span> defined in a <span pulumi-lang-nodejs="`customResponseBody`" pulumi-lang-dotnet="`CustomResponseBody`" pulumi-lang-go="`customResponseBody`" pulumi-lang-python="`custom_response_body`" pulumi-lang-yaml="`customResponseBody`" pulumi-lang-java="`customResponseBody`">`custom_response_body`</span> block of this resource.
  final String? customResponseBodyKey;

  /// The HTTP status code to return to the client.
  final int responseCode;

  /// The <span pulumi-lang-nodejs="`responseHeader`" pulumi-lang-dotnet="`ResponseHeader`" pulumi-lang-go="`responseHeader`" pulumi-lang-python="`response_header`" pulumi-lang-yaml="`responseHeader`" pulumi-lang-java="`responseHeader`">`response_header`</span> blocks used to define the HTTP response headers added to the response. See <span pulumi-lang-nodejs="`responseHeader`" pulumi-lang-dotnet="`ResponseHeader`" pulumi-lang-go="`responseHeader`" pulumi-lang-python="`response_header`" pulumi-lang-yaml="`responseHeader`" pulumi-lang-java="`responseHeader`">`response_header`</span> below for details.
  final List<
          WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlockCustomResponseResponseHeader>?
      responseHeaders;

  WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlockCustomResponse({
    this.customResponseBodyKey,
    required this.responseCode,
    this.responseHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customResponseBodyKeyValue = customResponseBodyKey;
    if (customResponseBodyKeyValue != null) {
      map['customResponseBodyKey'] = customResponseBodyKeyValue;
    }
    map['responseCode'] = responseCode;
    final responseHeadersValue = responseHeaders;
    if (responseHeadersValue != null) {
      map['responseHeaders'] = Input.encodeList<
          WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlockCustomResponseResponseHeader,
          Map<String, dynamic>>(responseHeadersValue, (value) => value.toMap());
    }
    return map;
  }

  factory WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlockCustomResponse.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlockCustomResponse(
      customResponseBodyKey: map['customResponseBodyKey'] == null
          ? null
          : map['customResponseBodyKey'] as String,
      responseCode: map['responseCode'] as int,
      responseHeaders: map['responseHeaders'] == null
          ? null
          : Input.decodeList<
                  WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlockCustomResponseResponseHeader>(
              map['responseHeaders'],
              (value) =>
                  WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlockCustomResponseResponseHeader
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
