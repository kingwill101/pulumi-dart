// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_load_balancer_zone_shifted_attachment_load_balancer_zone_shifted_attachment_args_doc}
/// The set of arguments for LoadBalancerZoneShiftedAttachment.
/// {@endtemplate}
/// {@macro pulumi_alb_load_balancer_zone_shifted_attachment_load_balancer_zone_shifted_attachment_args_doc}
class LoadBalancerZoneShiftedAttachmentArgs {
  /// The ID of the load balancing instance.
  final pulumi.Input<String> loadBalancerId;
  /// The VSwitch corresponding to the zone. By default, each zone uses one VSwitch and one subnet.
  final pulumi.Input<String> vswitchId;
  /// The ID of the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [LoadBalancerZoneShiftedAttachmentArgs].
  /// [loadBalancerId] The ID of the load balancing instance.
  /// [vswitchId] The VSwitch corresponding to the zone. By default, each zone uses one VSwitch and one subnet.
  /// [zoneId] The ID of the zone.
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

  factory LoadBalancerZoneShiftedAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return LoadBalancerZoneShiftedAttachmentArgs(
      loadBalancerId: (map['loadBalancerId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

