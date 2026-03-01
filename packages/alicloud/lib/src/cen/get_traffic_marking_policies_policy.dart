// ignore_for_file: unused_element, unnecessary_cast


class GetTrafficMarkingPoliciesPolicy {
  /// The description of the Traffic Marking Policy.
  final String description;
  /// The ID of the resource. The value is formatted `<transit_router_id>:<traffic_marking_policy_id>`.
  final String id;
  /// The DSCP(Differentiated Services Code Point) of the Traffic Marking Policy.
  final int markingDscp;
  /// The Priority of the Traffic Marking Policy.
  final int priority;
  /// The status of the resource.
  final String status;
  /// The ID of the Traffic Marking Policy.
  final String trafficMarkingPolicyId;
  /// The name of the Traffic Marking Policy.
  final String trafficMarkingPolicyName;
  /// The ID of the transit router.
  final String transitRouterId;

  /// Creates a new [GetTrafficMarkingPoliciesPolicy].
  /// [description] The description of the Traffic Marking Policy.
  /// [id] The ID of the resource. The value is formatted `<transit_router_id>:<traffic_marking_policy_id>`.
  /// [markingDscp] The DSCP(Differentiated Services Code Point) of the Traffic Marking Policy.
  /// [priority] The Priority of the Traffic Marking Policy.
  /// [status] The status of the resource.
  /// [trafficMarkingPolicyId] The ID of the Traffic Marking Policy.
  /// [trafficMarkingPolicyName] The name of the Traffic Marking Policy.
  /// [transitRouterId] The ID of the transit router.
  GetTrafficMarkingPoliciesPolicy({
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
      description: map['description'] as String,
      id: map['id'] as String,
      markingDscp: map['markingDscp'] as int,
      priority: map['priority'] as int,
      status: map['status'] as String,
      trafficMarkingPolicyId: map['trafficMarkingPolicyId'] as String,
      trafficMarkingPolicyName: map['trafficMarkingPolicyName'] as String,
      transitRouterId: map['transitRouterId'] as String,
    );
  }
}

