// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ForwardingRuleRuleActionForwardGroupConfigServerGroupTuple {
  /// The ID of the endpoint group.
  final pulumi.Input<String> endpointGroupId;

  /// Creates a new [ForwardingRuleRuleActionForwardGroupConfigServerGroupTuple].
  /// [endpointGroupId] The ID of the endpoint group.
  const ForwardingRuleRuleActionForwardGroupConfigServerGroupTuple({
    required this.endpointGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointGroupId': endpointGroupId,
    };
  }

  factory ForwardingRuleRuleActionForwardGroupConfigServerGroupTuple.fromMap(Map<String, dynamic> map) {
    return ForwardingRuleRuleActionForwardGroupConfigServerGroupTuple(
      endpointGroupId: pulumi.Input.fromValue(map['endpointGroupId'] as String),
    );
  }
}

