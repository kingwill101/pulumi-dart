// ignore_for_file: unused_element, unnecessary_cast


class GetInterRegionTrafficQosPoliciesPolicy {
  /// The ID of the Inter Region Traffic Qos Policy.
  final String id;
  /// The description of the Inter Region Traffic Qos Policy.
  final String interRegionTrafficQosPolicyDescription;
  /// The ID of the Inter Region Traffic Qos Policy.
  final String interRegionTrafficQosPolicyId;
  /// The name of the Inter Region Traffic Qos Policy.
  final String interRegionTrafficQosPolicyName;
  /// The status of the traffic scheduling policy. Valid Value: `Creating`, `Active`, `Modifying`, `Deleting`, `Deleted`.
  final String status;
  /// The ID of the inter-region connection.
  final String transitRouterAttachmentId;
  /// The ID of the transit router.
  final String transitRouterId;

  /// Creates a new [GetInterRegionTrafficQosPoliciesPolicy].
  /// [id] The ID of the Inter Region Traffic Qos Policy.
  /// [interRegionTrafficQosPolicyDescription] The description of the Inter Region Traffic Qos Policy.
  /// [interRegionTrafficQosPolicyId] The ID of the Inter Region Traffic Qos Policy.
  /// [interRegionTrafficQosPolicyName] The name of the Inter Region Traffic Qos Policy.
  /// [status] The status of the traffic scheduling policy. Valid Value: `Creating`, `Active`, `Modifying`, `Deleting`, `Deleted`.
  /// [transitRouterAttachmentId] The ID of the inter-region connection.
  /// [transitRouterId] The ID of the transit router.
  GetInterRegionTrafficQosPoliciesPolicy({
    required this.id,
    required this.interRegionTrafficQosPolicyDescription,
    required this.interRegionTrafficQosPolicyId,
    required this.interRegionTrafficQosPolicyName,
    required this.status,
    required this.transitRouterAttachmentId,
    required this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'interRegionTrafficQosPolicyDescription': interRegionTrafficQosPolicyDescription,
      'interRegionTrafficQosPolicyId': interRegionTrafficQosPolicyId,
      'interRegionTrafficQosPolicyName': interRegionTrafficQosPolicyName,
      'status': status,
      'transitRouterAttachmentId': transitRouterAttachmentId,
      'transitRouterId': transitRouterId,
    };
  }

  factory GetInterRegionTrafficQosPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetInterRegionTrafficQosPoliciesPolicy(
      id: map['id'] as String,
      interRegionTrafficQosPolicyDescription: map['interRegionTrafficQosPolicyDescription'] as String,
      interRegionTrafficQosPolicyId: map['interRegionTrafficQosPolicyId'] as String,
      interRegionTrafficQosPolicyName: map['interRegionTrafficQosPolicyName'] as String,
      status: map['status'] as String,
      transitRouterAttachmentId: map['transitRouterAttachmentId'] as String,
      transitRouterId: map['transitRouterId'] as String,
    );
  }
}

