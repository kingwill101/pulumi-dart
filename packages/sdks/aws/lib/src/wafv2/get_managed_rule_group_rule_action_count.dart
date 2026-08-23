// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_rule_group_rule_action_count_custom_request_handling.dart';

class GetManagedRuleGroupRuleActionCount {
  /// Custom handling for the counted request. See `customRequestHandling` Block for details.
  final pulumi.Input<List<GetManagedRuleGroupRuleActionCountCustomRequestHandling>> customRequestHandlings;

  /// Creates a new [GetManagedRuleGroupRuleActionCount].
  /// [customRequestHandlings] Custom handling for the counted request. See `customRequestHandling` Block for details.
  const GetManagedRuleGroupRuleActionCount({
    required this.customRequestHandlings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandlings': pulumi.Input.mapInputValue<List<GetManagedRuleGroupRuleActionCountCustomRequestHandling>, List<Map<String, dynamic>>>(customRequestHandlings, (value) => pulumi.Input.encodeList<GetManagedRuleGroupRuleActionCountCustomRequestHandling, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetManagedRuleGroupRuleActionCount.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleActionCount(
      customRequestHandlings: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedRuleGroupRuleActionCountCustomRequestHandling>(map['customRequestHandlings']!, (value) => GetManagedRuleGroupRuleActionCountCustomRequestHandling.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
