// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_block_custom_response_response_header.dart';

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponse {
  /// Key of a custom response body defined in the Web ACL.
  final pulumi.Input<String?>? customResponseBodyKey;
  /// HTTP status code to return (200-599).
  final pulumi.Input<int> responseCode;
  /// Custom headers to include in the response. See Response Header below.
  final pulumi.Input<List<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponseResponseHeader>?>? responseHeaders;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponse].
  /// [customResponseBodyKey] Key of a custom response body defined in the Web ACL.
  /// [responseCode] HTTP status code to return (200-599).
  /// [responseHeaders] Custom headers to include in the response. See Response Header below.
  const WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponse({
    this.customResponseBodyKey,
    required this.responseCode,
    this.responseHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customResponseBodyKey': ?customResponseBodyKey,
      'responseCode': responseCode,
      'responseHeaders': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponseResponseHeader>, List<Map<String, dynamic>>>(responseHeaders, (value) => pulumi.Input.encodeList<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponseResponseHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponse.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponse(
      customResponseBodyKey: (() { final guardedValue = map['customResponseBodyKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responseCode: pulumi.Input.fromValue((map['responseCode'] as num).toInt()),
      responseHeaders: (() { final guardedValue = map['responseHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponseResponseHeader>(guardedValue, (value) => WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlockCustomResponseResponseHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
