// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_rule_group_association_rule_group_reference_rule_action_override_action_to_use_challenge_custom_request_handling_insert_header/web_acl_rule_group_association_rule_group_reference_rule_action_override_action_to_use_challenge_custom_request_handling_insert_header.dart';

class WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallengeCustomRequestHandling {
  /// Headers to insert into the request. See below.
  final List<
          WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader>?
      insertHeaders;

  WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallengeCustomRequestHandling({
    this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final insertHeadersValue = insertHeaders;
    if (insertHeadersValue != null) {
      map['insertHeaders'] = pulumi.Input.encodeList<
          WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader,
          Map<String, dynamic>>(insertHeadersValue, (value) => value.toMap());
    }
    return map;
  }

  factory WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallengeCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallengeCustomRequestHandling(
      insertHeaders: map['insertHeaders'] == null
          ? null
          : pulumi.Input.decodeList<
                  WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader>(
              map['insertHeaders'],
              (value) =>
                  WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
