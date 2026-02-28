// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_rule_group_rule_action_allow_custom_request_handling_insert_header.dart';

class GetManagedRuleGroupRuleActionAllowCustomRequestHandling {
  final List<
          GetManagedRuleGroupRuleActionAllowCustomRequestHandlingInsertHeader>
      insertHeaders;

  /// Creates a new [GetManagedRuleGroupRuleActionAllowCustomRequestHandling].
  /// [insertHeaders] Required.
  GetManagedRuleGroupRuleActionAllowCustomRequestHandling({
    required this.insertHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['insertHeaders'] = pulumi.Input.encodeList<
        GetManagedRuleGroupRuleActionAllowCustomRequestHandlingInsertHeader,
        Map<String, dynamic>>(insertHeaders, (value) => value.toMap());
    return map;
  }

  factory GetManagedRuleGroupRuleActionAllowCustomRequestHandling.fromMap(
      Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionAllowCustomRequestHandling(
      insertHeaders: pulumi.Input.decodeList<
              GetManagedRuleGroupRuleActionAllowCustomRequestHandlingInsertHeader>(
          map['insertHeaders'],
          (value) =>
              GetManagedRuleGroupRuleActionAllowCustomRequestHandlingInsertHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
