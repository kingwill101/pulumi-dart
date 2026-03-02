// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VbrPconnAssociation resources.
class VbrPconnAssociationState {
  /// (Optional, ForceNew, Computed) The circuit code provided by the operator for the physical connection.
  final pulumi.Input<String>? circuitCode;
  /// Whether IPv6 is enabled. Value:
  final pulumi.Input<bool>? enableIpv6;
  /// The Alibaba cloud IP address of the VBR instance.
  final pulumi.Input<String>? localGatewayIp;
  /// The IPv6 address on the Alibaba Cloud side of the VBR instance.
  final pulumi.Input<String>? localIpv6GatewayIp;
  /// The client IP address of the VBR instance.
  /// - This attribute only allows the VBR owner to specify or modify.
  /// - Required when creating a VBR instance for the physical connection owner.
  final pulumi.Input<String>? peerGatewayIp;
  /// The IPv6 address of the client side of the VBR instance.
  /// - This attribute only allows the VBR owner to specify or modify.
  /// - Required when creating a VBR instance for the physical connection owner.
  final pulumi.Input<String>? peerIpv6GatewayIp;
  /// The subnet mask of the Alibaba Cloud side and the client side of the VBR instance.
  /// Two IPv6 addresses must be in the same subnet.
  final pulumi.Input<String>? peeringIpv6SubnetMask;
  /// The subnet mask of the Alibaba Cloud side and the client side of the VBR instance.
  /// The two IP addresses must be in the same subnet.
  final pulumi.Input<String>? peeringSubnetMask;
  /// The ID of the leased line instance.
  final pulumi.Input<String>? physicalConnectionId;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The ID of the VBR instance.
  final pulumi.Input<String>? vbrId;
  /// VLAN ID of the VBR. Valid values: **0 to 2999**.
  ///
  /// > **NOTE:**  only the owner of the physical connection can specify this parameter. The VLAN ID of two VBRs under the same physical connection cannot be the same.
  final pulumi.Input<int>? vlanId;

  /// Creates a new [VbrPconnAssociationState].
  /// [circuitCode] (Optional, ForceNew, Computed) The circuit code provided by the operator for the physical connection.
  /// [enableIpv6] Whether IPv6 is enabled. Value:
  /// [localGatewayIp] The Alibaba cloud IP address of the VBR instance.
  /// [localIpv6GatewayIp] The IPv6 address on the Alibaba Cloud side of the VBR instance.
  /// [peerGatewayIp] The client IP address of the VBR instance.
  /// [peerIpv6GatewayIp] The IPv6 address of the client side of the VBR instance.
  /// [peeringIpv6SubnetMask] The subnet mask of the Alibaba Cloud side and the client side of the VBR instance.
  /// [peeringSubnetMask] The subnet mask of the Alibaba Cloud side and the client side of the VBR instance.
  /// [physicalConnectionId] The ID of the leased line instance.
  /// [status] The status of the resource
  /// [vbrId] The ID of the VBR instance.
  /// [vlanId] VLAN ID of the VBR. Valid values: **0 to 2999**.
  VbrPconnAssociationState({
    this.circuitCode,
    this.enableIpv6,
    this.localGatewayIp,
    this.localIpv6GatewayIp,
    this.peerGatewayIp,
    this.peerIpv6GatewayIp,
    this.peeringIpv6SubnetMask,
    this.peeringSubnetMask,
    this.physicalConnectionId,
    this.status,
    this.vbrId,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'circuitCode': ?circuitCode,
      'enableIpv6': ?enableIpv6,
      'localGatewayIp': ?localGatewayIp,
      'localIpv6GatewayIp': ?localIpv6GatewayIp,
      'peerGatewayIp': ?peerGatewayIp,
      'peerIpv6GatewayIp': ?peerIpv6GatewayIp,
      'peeringIpv6SubnetMask': ?peeringIpv6SubnetMask,
      'peeringSubnetMask': ?peeringSubnetMask,
      'physicalConnectionId': ?physicalConnectionId,
      'status': ?status,
      'vbrId': ?vbrId,
      'vlanId': ?vlanId,
    };
  }

  factory VbrPconnAssociationState.fromMap(Map<String, dynamic> map) {
    return VbrPconnAssociationState(
      circuitCode: map['circuitCode'] == null ? null : (map['circuitCode'] as String).input(),
      enableIpv6: map['enableIpv6'] == null ? null : (map['enableIpv6'] as bool).input(),
      localGatewayIp: map['localGatewayIp'] == null ? null : (map['localGatewayIp'] as String).input(),
      localIpv6GatewayIp: map['localIpv6GatewayIp'] == null ? null : (map['localIpv6GatewayIp'] as String).input(),
      peerGatewayIp: map['peerGatewayIp'] == null ? null : (map['peerGatewayIp'] as String).input(),
      peerIpv6GatewayIp: map['peerIpv6GatewayIp'] == null ? null : (map['peerIpv6GatewayIp'] as String).input(),
      peeringIpv6SubnetMask: map['peeringIpv6SubnetMask'] == null ? null : (map['peeringIpv6SubnetMask'] as String).input(),
      peeringSubnetMask: map['peeringSubnetMask'] == null ? null : (map['peeringSubnetMask'] as String).input(),
      physicalConnectionId: map['physicalConnectionId'] == null ? null : (map['physicalConnectionId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vbrId: map['vbrId'] == null ? null : (map['vbrId'] as String).input(),
      vlanId: map['vlanId'] == null ? null : (map['vlanId'] as int).input(),
    );
  }
}

