// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_managed_rule_group_rule_action_count_custom_request_handling_insert_header/get_managed_rule_group_rule_action_count_custom_request_handling_insert_header.dart';

class GetManagedRuleGroupRuleActionCountCustomRequestHandling {
  final List<
          GetManagedRuleGroupRuleActionCountCustomRequestHandlingInsertHeader>
      insertHeaders;

  GetManagedRuleGroupRuleActionCountCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insertHeaders'] = pulumi.Input.encodeList<
        GetManagedRuleGroupRuleActionCountCustomRequestHandlingInsertHeader,
        Map<String, dynamic>>(insertHeaders, (value) => value.toMap());
    return map;
  }

  factory GetManagedRuleGroupRuleActionCountCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionCountCustomRequestHandling(
      insertHeaders: pulumi.Input.decodeList<
              GetManagedRuleGroupRuleActionCountCustomRequestHandlingInsertHeader>(
          map['insertHeaders'],
          (value) =>
              GetManagedRuleGroupRuleActionCountCustomRequestHandlingInsertHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
