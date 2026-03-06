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
  const LoadBalancerZoneShiftedAttachmentState({
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
      loadBalancerId: (() { final guardedValue = map['loadBalancerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

