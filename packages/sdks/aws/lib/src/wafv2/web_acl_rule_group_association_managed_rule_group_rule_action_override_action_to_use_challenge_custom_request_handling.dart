// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_challenge_custom_request_handling_insert_header.dart';

class WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandling {
  /// Headers to insert into the request. See below.
  final List<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader>? insertHeaders;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandling].
  /// [insertHeaders] Headers to insert into the request. See below.
  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandling({
    this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertHeaders': ?insertHeaders == null ? null : pulumi.Input.encodeList<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader, Map<String, dynamic>>(insertHeaders!, (value) => value.toMap()),
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandling.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandling(
      insertHeaders: map['insertHeaders'] == null ? null : pulumi.Input.decodeList<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader>(map['insertHeaders'], (value) => WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallengeCustomRequestHandlingInsertHeader.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

