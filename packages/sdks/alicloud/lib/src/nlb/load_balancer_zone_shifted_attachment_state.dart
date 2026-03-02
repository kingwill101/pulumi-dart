// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LoadBalancerZoneShiftedAttachment resources.
class LoadBalancerZoneShiftedAttachmentState {
  /// Network load balancer id
  final pulumi.Input<String>? loadBalancerId;
  /// Status
  final pulumi.Input<String>? status;
  /// The list of zones and vSwitch mappings
  final pulumi.Input<String>? vswitchId;
  /// ZoneId
  final pulumi.Input<String>? zoneId;

  /// Creates a new [LoadBalancerZoneShiftedAttachmentState].
  /// [loadBalancerId] Network load balancer id
  /// [status] Status
  /// [vswitchId] The list of zones and vSwitch mappings
  /// [zoneId] ZoneId
  LoadBalancerZoneShiftedAttachmentState({
    this.loadBalancerId,
    this.status,
    this.vswitchId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerId': ?loadBalancerId,
      'status': ?status,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory LoadBalancerZoneShiftedAttachmentState.fromMap(Map<String, dynamic> map) {
    return LoadBalancerZoneShiftedAttachmentState(
      loadBalancerId: map['loadBalancerId'] == null ? null : (map['loadBalancerId']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}

