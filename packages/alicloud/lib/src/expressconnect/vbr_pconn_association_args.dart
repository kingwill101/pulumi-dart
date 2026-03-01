// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_vbr_pconn_association_vbr_pconn_association_args_doc}
/// The set of arguments for VbrPconnAssociation.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_vbr_pconn_association_vbr_pconn_association_args_doc}
class VbrPconnAssociationArgs {
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
  final pulumi.Input<String> physicalConnectionId;
  /// The ID of the VBR instance.
  final pulumi.Input<String> vbrId;
  /// VLAN ID of the VBR. Valid values: **0 to 2999**.
  ///
  /// > **NOTE:**  only the owner of the physical connection can specify this parameter. The VLAN ID of two VBRs under the same physical connection cannot be the same.
  final pulumi.Input<int> vlanId;

  /// Creates a new [VbrPconnAssociationArgs].
  /// [enableIpv6] Whether IPv6 is enabled. Value:
  /// [localGatewayIp] The Alibaba cloud IP address of the VBR instance.
  /// [localIpv6GatewayIp] The IPv6 address on the Alibaba Cloud side of the VBR instance.
  /// [peerGatewayIp] The client IP address of the VBR instance.
  /// [peerIpv6GatewayIp] The IPv6 address of the client side of the VBR instance.
  /// [peeringIpv6SubnetMask] The subnet mask of the Alibaba Cloud side and the client side of the VBR instance.
  /// [peeringSubnetMask] The subnet mask of the Alibaba Cloud side and the client side of the VBR instance.
  /// [physicalConnectionId] The ID of the leased line instance.
  /// [vbrId] The ID of the VBR instance.
  /// [vlanId] VLAN ID of the VBR. Valid values: **0 to 2999**.
  VbrPconnAssociationArgs({
    bool? enableIpv6,
    String? localGatewayIp,
    String? localIpv6GatewayIp,
    String? peerGatewayIp,
    String? peerIpv6GatewayIp,
    String? peeringIpv6SubnetMask,
    String? peeringSubnetMask,
    required String physicalConnectionId,
    required String vbrId,
    required int vlanId,
  }) :
      enableIpv6 = pulumi.Input.asOptionalInput<bool>(enableIpv6),
      localGatewayIp = pulumi.Input.asOptionalInput<String>(localGatewayIp),
      localIpv6GatewayIp = pulumi.Input.asOptionalInput<String>(localIpv6GatewayIp),
      peerGatewayIp = pulumi.Input.asOptionalInput<String>(peerGatewayIp),
      peerIpv6GatewayIp = pulumi.Input.asOptionalInput<String>(peerIpv6GatewayIp),
      peeringIpv6SubnetMask = pulumi.Input.asOptionalInput<String>(peeringIpv6SubnetMask),
      peeringSubnetMask = pulumi.Input.asOptionalInput<String>(peeringSubnetMask),
      physicalConnectionId = pulumi.Input.asInput<String>(physicalConnectionId),
      vbrId = pulumi.Input.asInput<String>(vbrId),
      vlanId = pulumi.Input.asInput<int>(vlanId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableIpv6': ?enableIpv6,
      'localGatewayIp': ?localGatewayIp,
      'localIpv6GatewayIp': ?localIpv6GatewayIp,
      'peerGatewayIp': ?peerGatewayIp,
      'peerIpv6GatewayIp': ?peerIpv6GatewayIp,
      'peeringIpv6SubnetMask': ?peeringIpv6SubnetMask,
      'peeringSubnetMask': ?peeringSubnetMask,
      'physicalConnectionId': physicalConnectionId,
      'vbrId': vbrId,
      'vlanId': vlanId,
    };
  }

  factory VbrPconnAssociationArgs.fromMap(Map<String, dynamic> map) {
    return VbrPconnAssociationArgs(
      enableIpv6: map['enableIpv6'] == null ? null : map['enableIpv6'] as bool,
      localGatewayIp: map['localGatewayIp'] == null ? null : map['localGatewayIp'] as String,
      localIpv6GatewayIp: map['localIpv6GatewayIp'] == null ? null : map['localIpv6GatewayIp'] as String,
      peerGatewayIp: map['peerGatewayIp'] == null ? null : map['peerGatewayIp'] as String,
      peerIpv6GatewayIp: map['peerIpv6GatewayIp'] == null ? null : map['peerIpv6GatewayIp'] as String,
      peeringIpv6SubnetMask: map['peeringIpv6SubnetMask'] == null ? null : map['peeringIpv6SubnetMask'] as String,
      peeringSubnetMask: map['peeringSubnetMask'] == null ? null : map['peeringSubnetMask'] as String,
      physicalConnectionId: map['physicalConnectionId'] as String,
      vbrId: map['vbrId'] as String,
      vlanId: map['vlanId'] as int,
    );
  }
}

