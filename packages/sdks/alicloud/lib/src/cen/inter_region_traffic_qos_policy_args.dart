// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_inter_region_traffic_qos_policy_inter_region_traffic_qos_policy_args_doc}
/// The set of arguments for InterRegionTrafficQosPolicy.
/// {@endtemplate}
/// {@macro pulumi_cen_inter_region_traffic_qos_policy_inter_region_traffic_qos_policy_args_doc}
class InterRegionTrafficQosPolicyArgs {
  /// Bandwidth guarantee mode. You can select by bandwidth or by bandwidth percentage. The default is by percentage.
  final pulumi.Input<String>? bandwidthGuaranteeMode;
  /// The description information of the traffic scheduling policy.
  final pulumi.Input<String>? interRegionTrafficQosPolicyDescription;
  /// The name of the traffic scheduling policy.
  final pulumi.Input<String>? interRegionTrafficQosPolicyName;
  /// Peer Attachment ID.
  final pulumi.Input<String> transitRouterAttachmentId;
  /// The ID of the forwarding router instance.
  final pulumi.Input<String> transitRouterId;

  /// Creates a new [InterRegionTrafficQosPolicyArgs].
  /// [bandwidthGuaranteeMode] Bandwidth guarantee mode. You can select by bandwidth or by bandwidth percentage. The default is by percentage.
  /// [interRegionTrafficQosPolicyDescription] The description information of the traffic scheduling policy.
  /// [interRegionTrafficQosPolicyName] The name of the traffic scheduling policy.
  /// [transitRouterAttachmentId] Peer Attachment ID.
  /// [transitRouterId] The ID of the forwarding router instance.
  InterRegionTrafficQosPolicyArgs({
    pulumi.Output<String>? bandwidthGuaranteeMode,
    pulumi.Output<String>? interRegionTrafficQosPolicyDescription,
    pulumi.Output<String>? interRegionTrafficQosPolicyName,
    required pulumi.Output<String> transitRouterAttachmentId,
    required pulumi.Output<String> transitRouterId,
  }) :
      bandwidthGuaranteeMode = pulumi.Input.asOptionalInput<String>(bandwidthGuaranteeMode),
      interRegionTrafficQosPolicyDescription = pulumi.Input.asOptionalInput<String>(interRegionTrafficQosPolicyDescription),
      interRegionTrafficQosPolicyName = pulumi.Input.asOptionalInput<String>(interRegionTrafficQosPolicyName),
      transitRouterAttachmentId = pulumi.Input.asInput<String>(transitRouterAttachmentId),
      transitRouterId = pulumi.Input.asInput<String>(transitRouterId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidthGuaranteeMode': ?bandwidthGuaranteeMode,
      'interRegionTrafficQosPolicyDescription': ?interRegionTrafficQosPolicyDescription,
      'interRegionTrafficQosPolicyName': ?interRegionTrafficQosPolicyName,
      'transitRouterAttachmentId': transitRouterAttachmentId,
      'transitRouterId': transitRouterId,
    };
  }

  factory InterRegionTrafficQosPolicyArgs.fromMap(Map<String, dynamic> map) {
    return InterRegionTrafficQosPolicyArgs(
      bandwidthGuaranteeMode: map['bandwidthGuaranteeMode'] == null ? null : pulumi.Output.create<String>(map['bandwidthGuaranteeMode'] as String),
      interRegionTrafficQosPolicyDescription: map['interRegionTrafficQosPolicyDescription'] == null ? null : pulumi.Output.create<String>(map['interRegionTrafficQosPolicyDescription'] as String),
      interRegionTrafficQosPolicyName: map['interRegionTrafficQosPolicyName'] == null ? null : pulumi.Output.create<String>(map['interRegionTrafficQosPolicyName'] as String),
      transitRouterAttachmentId: pulumi.Output.create<String>(map['transitRouterAttachmentId'] as String),
      transitRouterId: pulumi.Output.create<String>(map['transitRouterId'] as String),
    );
  }
}

