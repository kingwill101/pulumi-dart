// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_rule_group_reference_rule_action_override_action_to_use_block_custom_response_response_header.dart';

class WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponse {
  /// Key of a custom response body to use.
  final String? customResponseBodyKey;
  /// HTTP response code to return (200-599).
  final int responseCode;
  /// Headers to include in the response. See below.
  final List<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponseResponseHeader>? responseHeaders;

  /// Creates a new [WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponse].
  /// [customResponseBodyKey] Key of a custom response body to use.
  /// [responseCode] HTTP response code to return (200-599).
  /// [responseHeaders] Headers to include in the response. See below.
  WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponse({
    this.customResponseBodyKey,
    required this.responseCode,
    this.responseHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customResponseBodyKey': ?customResponseBodyKey,
      'responseCode': responseCode,
      'responseHeaders': ?responseHeaders == null ? null : pulumi.Input.encodeList<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponseResponseHeader, Map<String, dynamic>>(responseHeaders!, (value) => value.toMap()),
    };
  }

  factory WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponse.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponse(
      customResponseBodyKey: map['customResponseBodyKey'] == null ? null : map['customResponseBodyKey'] as String,
      responseCode: map['responseCode'] as int,
      responseHeaders: map['responseHeaders'] == null ? null : pulumi.Input.decodeList<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponseResponseHeader>(map['responseHeaders'], (value) => WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponseResponseHeader.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

