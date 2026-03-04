// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInterRegionTrafficQosPoliciesPolicy {
  /// The ID of the Inter Region Traffic Qos Policy.
  final pulumi.Input<String> id;

  /// The description of the Inter Region Traffic Qos Policy.
  final pulumi.Input<String> interRegionTrafficQosPolicyDescription;

  /// The ID of the Inter Region Traffic Qos Policy.
  final pulumi.Input<String> interRegionTrafficQosPolicyId;

  /// The name of the Inter Region Traffic Qos Policy.
  final pulumi.Input<String> interRegionTrafficQosPolicyName;

  /// The status of the traffic scheduling policy. Valid Value: `Creating`, `Active`, `Modifying`, `Deleting`, `Deleted`.
  final pulumi.Input<String> status;

  /// The ID of the inter-region connection.
  final pulumi.Input<String> transitRouterAttachmentId;

  /// The ID of the transit router.
  final pulumi.Input<String> transitRouterId;

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
      'interRegionTrafficQosPolicyDescription':
          interRegionTrafficQosPolicyDescription,
      'interRegionTrafficQosPolicyId': interRegionTrafficQosPolicyId,
      'interRegionTrafficQosPolicyName': interRegionTrafficQosPolicyName,
      'status': status,
      'transitRouterAttachmentId': transitRouterAttachmentId,
      'transitRouterId': transitRouterId,
    };
  }

  factory GetInterRegionTrafficQosPoliciesPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInterRegionTrafficQosPoliciesPolicy(
      id: pulumi.Input.fromValue(map['id'] as String),
      interRegionTrafficQosPolicyDescription: pulumi.Input.fromValue(
        map['interRegionTrafficQosPolicyDescription'] as String,
      ),
      interRegionTrafficQosPolicyId: pulumi.Input.fromValue(
        map['interRegionTrafficQosPolicyId'] as String,
      ),
      interRegionTrafficQosPolicyName: pulumi.Input.fromValue(
        map['interRegionTrafficQosPolicyName'] as String,
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
      transitRouterAttachmentId: pulumi.Input.fromValue(
        map['transitRouterAttachmentId'] as String,
      ),
      transitRouterId: pulumi.Input.fromValue(map['transitRouterId'] as String),
    );
  }
}
