// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_rule_group_reference_rule_action_override_action_to_use_allow_custom_request_handling_insert_header.dart';

class WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandling {
  /// Headers to insert into the request. See below.
  final List<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader>? insertHeaders;

  /// Creates a new [WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandling].
  /// [insertHeaders] Headers to insert into the request. See below.
  WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandling({
    this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertHeaders': ?insertHeaders == null ? null : pulumi.Input.encodeList<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader, Map<String, dynamic>>(insertHeaders!, (value) => value.toMap()),
    };
  }

  factory WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandling.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandling(
      insertHeaders: map['insertHeaders'] == null ? null : pulumi.Input.decodeList<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader>(map['insertHeaders'], (value) => WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllowCustomRequestHandlingInsertHeader.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

