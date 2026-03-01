// ignore_for_file: unused_element, unnecessary_cast


class GetRulesRuleRuleActionForwardGroupConfigServerGroupTuple {
  /// The ID of the destination server group to which requests are forwarded.
  final String serverGroupId;
  /// The Weight of server group.
  final int weight;

  /// Creates a new [GetRulesRuleRuleActionForwardGroupConfigServerGroupTuple].
  /// [serverGroupId] The ID of the destination server group to which requests are forwarded.
  /// [weight] The Weight of server group.
  GetRulesRuleRuleActionForwardGroupConfigServerGroupTuple({
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
      serverGroupId: map['serverGroupId'] as String,
      weight: map['weight'] as int,
    );
  }
}

