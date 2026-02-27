// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_rule_group_association_rule_group_reference_rule_action_override_action_to_use_count_custom_request_handling_insert_header/web_acl_rule_group_association_rule_group_reference_rule_action_override_action_to_use_count_custom_request_handling_insert_header.dart';

class WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandling {
  /// Headers to insert into the request. See below.
  final List<
          WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader>?
      insertHeaders;

  WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandling({
    this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final insertHeadersValue = insertHeaders;
    if (insertHeadersValue != null) {
      map['insertHeaders'] = pulumi.Input.encodeList<
          WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader,
          Map<String, dynamic>>(insertHeadersValue, (value) => value.toMap());
    }
    return map;
  }

  factory WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandling(
      insertHeaders: map['insertHeaders'] == null
          ? null
          : pulumi.Input.decodeList<
                  WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader>(
              map['insertHeaders'],
              (value) =>
                  WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
