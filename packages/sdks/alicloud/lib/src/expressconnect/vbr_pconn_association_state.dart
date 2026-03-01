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
    pulumi.Output<String>? circuitCode,
    pulumi.Output<bool>? enableIpv6,
    pulumi.Output<String>? localGatewayIp,
    pulumi.Output<String>? localIpv6GatewayIp,
    pulumi.Output<String>? peerGatewayIp,
    pulumi.Output<String>? peerIpv6GatewayIp,
    pulumi.Output<String>? peeringIpv6SubnetMask,
    pulumi.Output<String>? peeringSubnetMask,
    pulumi.Output<String>? physicalConnectionId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vbrId,
    pulumi.Output<int>? vlanId,
  }) :
      circuitCode = pulumi.Input.asOptionalInput<String>(circuitCode),
      enableIpv6 = pulumi.Input.asOptionalInput<bool>(enableIpv6),
      localGatewayIp = pulumi.Input.asOptionalInput<String>(localGatewayIp),
      localIpv6GatewayIp = pulumi.Input.asOptionalInput<String>(localIpv6GatewayIp),
      peerGatewayIp = pulumi.Input.asOptionalInput<String>(peerGatewayIp),
      peerIpv6GatewayIp = pulumi.Input.asOptionalInput<String>(peerIpv6GatewayIp),
      peeringIpv6SubnetMask = pulumi.Input.asOptionalInput<String>(peeringIpv6SubnetMask),
      peeringSubnetMask = pulumi.Input.asOptionalInput<String>(peeringSubnetMask),
      physicalConnectionId = pulumi.Input.asOptionalInput<String>(physicalConnectionId),
      status = pulumi.Input.asOptionalInput<String>(status),
      vbrId = pulumi.Input.asOptionalInput<String>(vbrId),
      vlanId = pulumi.Input.asOptionalInput<int>(vlanId);

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
      circuitCode: map['circuitCode'] == null ? null : pulumi.Output.create<String>(map['circuitCode'] as String),
      enableIpv6: map['enableIpv6'] == null ? null : pulumi.Output.create<bool>(map['enableIpv6'] as bool),
      localGatewayIp: map['localGatewayIp'] == null ? null : pulumi.Output.create<String>(map['localGatewayIp'] as String),
      localIpv6GatewayIp: map['localIpv6GatewayIp'] == null ? null : pulumi.Output.create<String>(map['localIpv6GatewayIp'] as String),
      peerGatewayIp: map['peerGatewayIp'] == null ? null : pulumi.Output.create<String>(map['peerGatewayIp'] as String),
      peerIpv6GatewayIp: map['peerIpv6GatewayIp'] == null ? null : pulumi.Output.create<String>(map['peerIpv6GatewayIp'] as String),
      peeringIpv6SubnetMask: map['peeringIpv6SubnetMask'] == null ? null : pulumi.Output.create<String>(map['peeringIpv6SubnetMask'] as String),
      peeringSubnetMask: map['peeringSubnetMask'] == null ? null : pulumi.Output.create<String>(map['peeringSubnetMask'] as String),
      physicalConnectionId: map['physicalConnectionId'] == null ? null : pulumi.Output.create<String>(map['physicalConnectionId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vbrId: map['vbrId'] == null ? null : pulumi.Output.create<String>(map['vbrId'] as String),
      vlanId: map['vlanId'] == null ? null : pulumi.Output.create<int>(map['vlanId'] as int),
    );
  }
}

