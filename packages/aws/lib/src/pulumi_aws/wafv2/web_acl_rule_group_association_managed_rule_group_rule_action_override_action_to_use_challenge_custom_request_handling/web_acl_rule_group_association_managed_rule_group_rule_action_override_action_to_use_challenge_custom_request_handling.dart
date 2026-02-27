// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_challenge_custom_request_handling_insert_header/web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_challenge_custom_request_handling_insert_header.dart';

class WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandling {
  /// Headers to insert into the request. See below.
  final List<
          WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader>?
      insertHeaders;

  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandling({
    this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final insertHeadersValue = insertHeaders;
    if (insertHeadersValue != null) {
      map['insertHeaders'] = pulumi.Input.encodeList<
          WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader,
          Map<String, dynamic>>(insertHeadersValue, (value) => value.toMap());
    }
    return map;
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandling(
      insertHeaders: map['insertHeaders'] == null
          ? null
          : pulumi.Input.decodeList<
                  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader>(
              map['insertHeaders'],
              (value) =>
                  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
