// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LoadBalancerZoneShiftedAttachment resources.
class LoadBalancerZoneShiftedAttachmentState {
  /// The ID of the load balancing instance.
  final pulumi.Input<String>? loadBalancerId;

  /// Availability zone status. Value:
  final pulumi.Input<String>? status;

  /// The VSwitch corresponding to the zone. By default, each zone uses one VSwitch and one subnet.
  final pulumi.Input<String>? vswitchId;

  /// The ID of the zone.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [LoadBalancerZoneShiftedAttachmentState].
  /// [loadBalancerId] The ID of the load balancing instance.
  /// [status] Availability zone status. Value:
  /// [vswitchId] The VSwitch corresponding to the zone. By default, each zone uses one VSwitch and one subnet.
  /// [zoneId] The ID of the zone.
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

  factory LoadBalancerZoneShiftedAttachmentState.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoadBalancerZoneShiftedAttachmentState(
      loadBalancerId: (() {
        final guardedValue = map['loadBalancerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
