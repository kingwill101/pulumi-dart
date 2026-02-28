// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_allow_custom_request_handling_insert_header.dart';

class WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandling {
  /// Headers to insert into the request. See below.
  final List<
          WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader>?
      insertHeaders;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandling].
  /// [insertHeaders] Headers to insert into the request. See below.
  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandling({
    this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final insertHeadersValue = insertHeaders;
    if (insertHeadersValue != null) {
      map['insertHeaders'] = pulumi.Input.encodeList<
          WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader,
          Map<String, dynamic>>(insertHeadersValue, (value) => value.toMap());
    }
    return map;
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandling(
      insertHeaders: map['insertHeaders'] == null
          ? null
          : pulumi.Input.decodeList<
                  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader>(
              map['insertHeaders'],
              (value) =>
                  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
