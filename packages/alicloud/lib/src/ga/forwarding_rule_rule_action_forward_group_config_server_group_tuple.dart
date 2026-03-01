// ignore_for_file: unused_element, unnecessary_cast


class ForwardingRuleRuleActionForwardGroupConfigServerGroupTuple {
  /// The ID of the endpoint group.
  final String endpointGroupId;

  /// Creates a new [ForwardingRuleRuleActionForwardGroupConfigServerGroupTuple].
  /// [endpointGroupId] The ID of the endpoint group.
  ForwardingRuleRuleActionForwardGroupConfigServerGroupTuple({
    required this.endpointGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointGroupId': endpointGroupId,
    };
  }

  factory ForwardingRuleRuleActionForwardGroupConfigServerGroupTuple.fromMap(Map<String, dynamic> map) {
    return ForwardingRuleRuleActionForwardGroupConfigServerGroupTuple(
      endpointGroupId: map['endpointGroupId'] as String,
    );
  }
}

