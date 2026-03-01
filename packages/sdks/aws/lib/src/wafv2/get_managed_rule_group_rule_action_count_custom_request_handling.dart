// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_rule_group_rule_action_count_custom_request_handling_insert_header.dart';

class GetManagedRuleGroupRuleActionCountCustomRequestHandling {
  final List<GetManagedRuleGroupRuleActionCountCustomRequestHandlingInsertHeader> insertHeaders;

  /// Creates a new [GetManagedRuleGroupRuleActionCountCustomRequestHandling].
  /// [insertHeaders] Required.
  GetManagedRuleGroupRuleActionCountCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'insertHeaders': pulumi.Input.encodeList<GetManagedRuleGroupRuleActionCountCustomRequestHandlingInsertHeader, Map<String, dynamic>>(insertHeaders, (value) => value.toMap()),
    };
  }

  factory GetManagedRuleGroupRuleActionCountCustomRequestHandling.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionCountCustomRequestHandling(
      insertHeaders: pulumi.Input.decodeList<GetManagedRuleGroupRuleActionCountCustomRequestHandlingInsertHeader>(map['insertHeaders'], (value) => GetManagedRuleGroupRuleActionCountCustomRequestHandlingInsertHeader.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

