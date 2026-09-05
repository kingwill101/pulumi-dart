// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_rule_group_reference_rule_action_override_action_to_use_block_custom_response_response_header.dart';

class WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponse {
  /// Key of a custom response body to use.
  final pulumi.Input<String?>? customResponseBodyKey;
  /// HTTP response code to return (200-599).
  final pulumi.Input<int> responseCode;
  /// Headers to include in the response. See below.
  final pulumi.Input<List<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponseResponseHeader>?>? responseHeaders;

  /// Creates a new [WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponse].
  /// [customResponseBodyKey] Key of a custom response body to use.
  /// [responseCode] HTTP response code to return (200-599).
  /// [responseHeaders] Headers to include in the response. See below.
  const WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponse({
    this.customResponseBodyKey,
    required this.responseCode,
    this.responseHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customResponseBodyKey': ?customResponseBodyKey,
      'responseCode': responseCode,
      'responseHeaders': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponseResponseHeader>, List<Map<String, dynamic>>>(responseHeaders, (value) => pulumi.Input.encodeList<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponseResponseHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponse.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponse(
      customResponseBodyKey: (() { final guardedValue = map['customResponseBodyKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responseCode: pulumi.Input.fromValue((map['responseCode'] as num).toInt()),
      responseHeaders: (() { final guardedValue = map['responseHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponseResponseHeader>(guardedValue, (value) => WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlockCustomResponseResponseHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
