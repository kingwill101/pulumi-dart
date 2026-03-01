// ignore_for_file: unused_element, unnecessary_cast


class GetForwardingRulesForwardingRuleRuleActionForwardGroupConfigServerGroupTuple {
  /// Terminal node group ID.
  final String endpointGroupId;

  /// Creates a new [GetForwardingRulesForwardingRuleRuleActionForwardGroupConfigServerGroupTuple].
  /// [endpointGroupId] Terminal node group ID.
  GetForwardingRulesForwardingRuleRuleActionForwardGroupConfigServerGroupTuple({
    required this.endpointGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointGroupId': endpointGroupId,
    };
  }

  factory GetForwardingRulesForwardingRuleRuleActionForwardGroupConfigServerGroupTuple.fromMap(Map<String, dynamic> map) {
    return GetForwardingRulesForwardingRuleRuleActionForwardGroupConfigServerGroupTuple(
      endpointGroupId: map['endpointGroupId'] as String,
    );
  }
}

