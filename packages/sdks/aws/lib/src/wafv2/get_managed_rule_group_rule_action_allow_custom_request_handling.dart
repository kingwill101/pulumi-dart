// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_rule_group_rule_action_allow_custom_request_handling_insert_header.dart';

class GetManagedRuleGroupRuleActionAllowCustomRequestHandling {
  final pulumi.Input<List<GetManagedRuleGroupRuleActionAllowCustomRequestHandlingInsertHeader>> insertHeaders;

  /// Creates a new [GetManagedRuleGroupRuleActionAllowCustomRequestHandling].
  /// [insertHeaders] Required.
  GetManagedRuleGroupRuleActionAllowCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertHeaders': pulumi.Input.mapInputValue<List<GetManagedRuleGroupRuleActionAllowCustomRequestHandlingInsertHeader>, List<Map<String, dynamic>>>(insertHeaders, (value) => pulumi.Input.encodeList<GetManagedRuleGroupRuleActionAllowCustomRequestHandlingInsertHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetManagedRuleGroupRuleActionAllowCustomRequestHandling.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionAllowCustomRequestHandling(
      insertHeaders: (pulumi.Input.decodeList<GetManagedRuleGroupRuleActionAllowCustomRequestHandlingInsertHeader>(map['insertHeaders'], (value) => GetManagedRuleGroupRuleActionAllowCustomRequestHandlingInsertHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

