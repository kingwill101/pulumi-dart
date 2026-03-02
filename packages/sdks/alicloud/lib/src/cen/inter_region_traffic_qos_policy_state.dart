// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering InterRegionTrafficQosPolicy resources.
class InterRegionTrafficQosPolicyState {
  /// Bandwidth guarantee mode. You can select by bandwidth or by bandwidth percentage. The default is by percentage.
  final pulumi.Input<String>? bandwidthGuaranteeMode;
  /// The description information of the traffic scheduling policy.
  final pulumi.Input<String>? interRegionTrafficQosPolicyDescription;
  /// The name of the traffic scheduling policy.
  final pulumi.Input<String>? interRegionTrafficQosPolicyName;
  /// The status of the traffic scheduling policy.
  final pulumi.Input<String>? status;
  /// Peer Attachment ID.
  final pulumi.Input<String>? transitRouterAttachmentId;
  /// The ID of the forwarding router instance.
  final pulumi.Input<String>? transitRouterId;

  /// Creates a new [InterRegionTrafficQosPolicyState].
  /// [bandwidthGuaranteeMode] Bandwidth guarantee mode. You can select by bandwidth or by bandwidth percentage. The default is by percentage.
  /// [interRegionTrafficQosPolicyDescription] The description information of the traffic scheduling policy.
  /// [interRegionTrafficQosPolicyName] The name of the traffic scheduling policy.
  /// [status] The status of the traffic scheduling policy.
  /// [transitRouterAttachmentId] Peer Attachment ID.
  /// [transitRouterId] The ID of the forwarding router instance.
  InterRegionTrafficQosPolicyState({
    this.bandwidthGuaranteeMode,
    this.interRegionTrafficQosPolicyDescription,
    this.interRegionTrafficQosPolicyName,
    this.status,
    this.transitRouterAttachmentId,
    this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthGuaranteeMode': ?bandwidthGuaranteeMode,
      'interRegionTrafficQosPolicyDescription': ?interRegionTrafficQosPolicyDescription,
      'interRegionTrafficQosPolicyName': ?interRegionTrafficQosPolicyName,
      'status': ?status,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterId': ?transitRouterId,
    };
  }

  factory InterRegionTrafficQosPolicyState.fromMap(Map<String, dynamic> map) {
    return InterRegionTrafficQosPolicyState(
      bandwidthGuaranteeMode: map['bandwidthGuaranteeMode'] == null ? null : (map['bandwidthGuaranteeMode']! as String).input(),
      interRegionTrafficQosPolicyDescription: map['interRegionTrafficQosPolicyDescription'] == null ? null : (map['interRegionTrafficQosPolicyDescription']! as String).input(),
      interRegionTrafficQosPolicyName: map['interRegionTrafficQosPolicyName'] == null ? null : (map['interRegionTrafficQosPolicyName']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : (map['transitRouterAttachmentId']! as String).input(),
      transitRouterId: map['transitRouterId'] == null ? null : (map['transitRouterId']! as String).input(),
    );
  }
}

