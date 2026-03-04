// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nlb_load_balancer_zone_shifted_attachment_load_balancer_zone_shifted_attachment_args_doc}
/// The set of arguments for LoadBalancerZoneShiftedAttachment.
/// {@endtemplate}
/// {@macro pulumi_nlb_load_balancer_zone_shifted_attachment_load_balancer_zone_shifted_attachment_args_doc}
class LoadBalancerZoneShiftedAttachmentArgs {
  /// Network load balancer id
  final pulumi.Input<String> loadBalancerId;

  /// The list of zones and vSwitch mappings
  final pulumi.Input<String> vswitchId;

  /// ZoneId
  final pulumi.Input<String> zoneId;

  /// Creates a new [LoadBalancerZoneShiftedAttachmentArgs].
  /// [loadBalancerId] Network load balancer id
  /// [vswitchId] The list of zones and vSwitch mappings
  /// [zoneId] ZoneId
  LoadBalancerZoneShiftedAttachmentArgs({
    required this.loadBalancerId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerId': loadBalancerId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory LoadBalancerZoneShiftedAttachmentArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoadBalancerZoneShiftedAttachmentArgs(
      loadBalancerId: pulumi.Input.fromValue(map['loadBalancerId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
