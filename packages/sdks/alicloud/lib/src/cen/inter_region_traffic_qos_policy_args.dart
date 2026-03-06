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
  const InterRegionTrafficQosPolicyArgs({
    this.bandwidthGuaranteeMode,
    this.interRegionTrafficQosPolicyDescription,
    this.interRegionTrafficQosPolicyName,
    required this.transitRouterAttachmentId,
    required this.transitRouterId,
  });

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
      bandwidthGuaranteeMode: (() { final guardedValue = map['bandwidthGuaranteeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interRegionTrafficQosPolicyDescription: (() { final guardedValue = map['interRegionTrafficQosPolicyDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interRegionTrafficQosPolicyName: (() { final guardedValue = map['interRegionTrafficQosPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterAttachmentId: pulumi.Input.fromValue(map['transitRouterAttachmentId'] as String),
      transitRouterId: pulumi.Input.fromValue(map['transitRouterId'] as String),
    );
  }
}

