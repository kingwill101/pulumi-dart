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
    pulumi.Output<String>? bandwidthGuaranteeMode,
    pulumi.Output<String>? interRegionTrafficQosPolicyDescription,
    pulumi.Output<String>? interRegionTrafficQosPolicyName,
    pulumi.Output<String>? status,
    pulumi.Output<String>? transitRouterAttachmentId,
    pulumi.Output<String>? transitRouterId,
  }) :
      bandwidthGuaranteeMode = pulumi.Input.asOptionalInput<String>(bandwidthGuaranteeMode),
      interRegionTrafficQosPolicyDescription = pulumi.Input.asOptionalInput<String>(interRegionTrafficQosPolicyDescription),
      interRegionTrafficQosPolicyName = pulumi.Input.asOptionalInput<String>(interRegionTrafficQosPolicyName),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterAttachmentId = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentId),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId);

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
      bandwidthGuaranteeMode: map['bandwidthGuaranteeMode'] == null ? null : pulumi.Output.create<String>(map['bandwidthGuaranteeMode'] as String),
      interRegionTrafficQosPolicyDescription: map['interRegionTrafficQosPolicyDescription'] == null ? null : pulumi.Output.create<String>(map['interRegionTrafficQosPolicyDescription'] as String),
      interRegionTrafficQosPolicyName: map['interRegionTrafficQosPolicyName'] == null ? null : pulumi.Output.create<String>(map['interRegionTrafficQosPolicyName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitRouterAttachmentId'] as String),
      transitRouterId: map['transitRouterId'] == null ? null : pulumi.Output.create<String>(map['transitRouterId'] as String),
    );
  }
}

