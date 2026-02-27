// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_managed_rule_group_rule_action_count_custom_request_handling/get_managed_rule_group_rule_action_count_custom_request_handling.dart';

class GetManagedRuleGroupRuleActionCount {
  final List<GetManagedRuleGroupRuleActionCountCustomRequestHandling>
      customRequestHandlings;

  GetManagedRuleGroupRuleActionCount({
    required this.customRequestHandlings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customRequestHandlings'] = pulumi.Input.encodeList<
        GetManagedRuleGroupRuleActionCountCustomRequestHandling,
        Map<String, dynamic>>(customRequestHandlings, (value) => value.toMap());
    return map;
  }

  factory GetManagedRuleGroupRuleActionCount.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionCount(
      customRequestHandlings: pulumi.Input.decodeList<
              GetManagedRuleGroupRuleActionCountCustomRequestHandling>(
          map['customRequestHandlings'],
          (value) =>
              GetManagedRuleGroupRuleActionCountCustomRequestHandling.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
