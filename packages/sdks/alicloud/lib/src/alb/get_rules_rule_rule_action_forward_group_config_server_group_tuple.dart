// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesRuleRuleActionForwardGroupConfigServerGroupTuple {
  /// The ID of the destination server group to which requests are forwarded.
  final pulumi.Input<String> serverGroupId;
  /// The Weight of server group.
  final pulumi.Input<int> weight;

  /// Creates a new [GetRulesRuleRuleActionForwardGroupConfigServerGroupTuple].
  /// [serverGroupId] The ID of the destination server group to which requests are forwarded.
  /// [weight] The Weight of server group.
  const GetRulesRuleRuleActionForwardGroupConfigServerGroupTuple({
    required this.serverGroupId,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupId': serverGroupId,
      'weight': weight,
    };
  }

  factory GetRulesRuleRuleActionForwardGroupConfigServerGroupTuple.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleActionForwardGroupConfigServerGroupTuple(
      serverGroupId: pulumi.Input.fromValue(map['serverGroupId'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}

