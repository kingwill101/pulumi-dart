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
    pulumi.Output<String>? loadBalancerId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      loadBalancerId = pulumi.Input.asOptionalInput<String>(loadBalancerId),
      status = pulumi.Input.asOptionalInput<String>(status),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      loadBalancerId: map['loadBalancerId'] == null ? null : pulumi.Output.create<String>(map['loadBalancerId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

