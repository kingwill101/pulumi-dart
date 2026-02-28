// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_block_custom_response_response_header.dart';

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponse {
  /// References the response body that you want AWS WAF to return to the web request client. This must reference a `key` defined in a `custom_response_body` block of this resource.
  final String? customResponseBodyKey;

  /// The HTTP status code to return to the client.
  final int responseCode;

  /// The `response_header` blocks used to define the HTTP response headers added to the response. See `response_header` below for details.
  final List<
          WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponseResponseHeader>?
      responseHeaders;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponse].
  /// [customResponseBodyKey] References the response body that you want AWS WAF to return to the web request client. This must reference a `key` defined in a `custom_response_body` block of this resource.
  /// [responseCode] The HTTP status code to return to the client.
  /// [responseHeaders] The `response_header` blocks used to define the HTTP response headers added to the response. See `response_header` below for details.
  WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponse({
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
      map['responseHeaders'] = pulumi.Input.encodeList<
          WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponseResponseHeader,
          Map<String, dynamic>>(responseHeadersValue, (value) => value.toMap());
    }
    return map;
  }

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponse.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponse(
      customResponseBodyKey: map['customResponseBodyKey'] == null
          ? null
          : map['customResponseBodyKey'] as String,
      responseCode: map['responseCode'] as int,
      responseHeaders: map['responseHeaders'] == null
          ? null
          : pulumi.Input.decodeList<
                  WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponseResponseHeader>(
              map['responseHeaders'],
              (value) =>
                  WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponseResponseHeader
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
