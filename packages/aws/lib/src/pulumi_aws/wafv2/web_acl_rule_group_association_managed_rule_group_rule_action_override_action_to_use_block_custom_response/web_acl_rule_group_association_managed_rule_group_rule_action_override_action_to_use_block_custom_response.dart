// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_block_custom_response_response_header/web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_block_custom_response_response_header.dart';

class WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponse {
  /// Key of a custom response body to use.
  final String? customResponseBodyKey;

  /// HTTP response code to return (200-599).
  final int responseCode;

  /// Headers to include in the response. See below.
  final List<
          WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponseResponseHeader>?
      responseHeaders;

  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponse({
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
          WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponseResponseHeader,
          Map<String, dynamic>>(responseHeadersValue, (value) => value.toMap());
    }
    return map;
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponse.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponse(
      customResponseBodyKey: map['customResponseBodyKey'] == null
          ? null
          : map['customResponseBodyKey'] as String,
      responseCode: map['responseCode'] as int,
      responseHeaders: map['responseHeaders'] == null
          ? null
          : pulumi.Input.decodeList<
                  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponseResponseHeader>(
              map['responseHeaders'],
              (value) =>
                  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlockCustomResponseResponseHeader
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
