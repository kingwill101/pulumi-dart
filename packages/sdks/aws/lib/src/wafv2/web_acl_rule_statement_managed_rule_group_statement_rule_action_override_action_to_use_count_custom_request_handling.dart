// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_count_custom_request_handling_insert_header.dart';

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCountCustomRequestHandling {
  /// Custom headers to insert into the request. See Insert Header below.
  final pulumi.Input<List<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader>?>? insertHeaders;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCountCustomRequestHandling].
  /// [insertHeaders] Custom headers to insert into the request. See Insert Header below.
  const WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCountCustomRequestHandling({
    this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertHeaders': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader>, List<Map<String, dynamic>>>(insertHeaders, (value) => pulumi.Input.encodeList<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCountCustomRequestHandling.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCountCustomRequestHandling(
      insertHeaders: (() { final guardedValue = map['insertHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader>(guardedValue, (value) => WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCountCustomRequestHandlingInsertHeader.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
