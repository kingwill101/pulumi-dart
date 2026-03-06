// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTrafficMarkingPoliciesPolicy {
  /// The description of the Traffic Marking Policy.
  final pulumi.Input<String> description;
  /// The ID of the resource. The value is formatted `&lt;transit_router_id&gt;:&lt;traffic_marking_policy_id&gt;`.
  final pulumi.Input<String> id;
  /// The DSCP(Differentiated Services Code Point) of the Traffic Marking Policy.
  final pulumi.Input<int> markingDscp;
  /// The Priority of the Traffic Marking Policy.
  final pulumi.Input<int> priority;
  /// The status of the resource.
  final pulumi.Input<String> status;
  /// The ID of the Traffic Marking Policy.
  final pulumi.Input<String> trafficMarkingPolicyId;
  /// The name of the Traffic Marking Policy.
  final pulumi.Input<String> trafficMarkingPolicyName;
  /// The ID of the transit router.
  final pulumi.Input<String> transitRouterId;

  /// Creates a new [GetTrafficMarkingPoliciesPolicy].
  /// [description] The description of the Traffic Marking Policy.
  /// [id] The ID of the resource. The value is formatted `&lt;transit_router_id&gt;:&lt;traffic_marking_policy_id&gt;`.
  /// [markingDscp] The DSCP(Differentiated Services Code Point) of the Traffic Marking Policy.
  /// [priority] The Priority of the Traffic Marking Policy.
  /// [status] The status of the resource.
  /// [trafficMarkingPolicyId] The ID of the Traffic Marking Policy.
  /// [trafficMarkingPolicyName] The name of the Traffic Marking Policy.
  /// [transitRouterId] The ID of the transit router.
  const GetTrafficMarkingPoliciesPolicy({
    required this.description,
    required this.id,
    required this.markingDscp,
    required this.priority,
    required this.status,
    required this.trafficMarkingPolicyId,
    required this.trafficMarkingPolicyName,
    required this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'markingDscp': markingDscp,
      'priority': priority,
      'status': status,
      'trafficMarkingPolicyId': trafficMarkingPolicyId,
      'trafficMarkingPolicyName': trafficMarkingPolicyName,
      'transitRouterId': transitRouterId,
    };
  }

  factory GetTrafficMarkingPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetTrafficMarkingPoliciesPolicy(
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      markingDscp: pulumi.Input.fromValue(map['markingDscp'] as int),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      status: pulumi.Input.fromValue(map['status'] as String),
      trafficMarkingPolicyId: pulumi.Input.fromValue(map['trafficMarkingPolicyId'] as String),
      trafficMarkingPolicyName: pulumi.Input.fromValue(map['trafficMarkingPolicyName'] as String),
      transitRouterId: pulumi.Input.fromValue(map['transitRouterId'] as String),
    );
  }
}

