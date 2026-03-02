// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVbrPconnAssociationsAssociation {
  /// The circuit code provided by the operator for the physical connection.
  final pulumi.Input<String> circuitCode;
  /// Whether IPv6 is enabled.
  final pulumi.Input<bool> enableIpv6;
  /// The ID of the Vbr Pconn Association.
  final pulumi.Input<String> id;
  /// The Alibaba cloud IP address of the VBR instance.
  final pulumi.Input<String> localGatewayIp;
  /// The IPv6 address on the Alibaba Cloud side of the VBR instance.
  final pulumi.Input<String> localIpv6GatewayIp;
  /// The client IP address of the VBR instance.
  final pulumi.Input<String> peerGatewayIp;
  /// The IPv6 address of the client side of the VBR instance.
  final pulumi.Input<String> peerIpv6GatewayIp;
  /// The subnet mask of the Alibaba Cloud side and the client side of the VBR instance.Two IPv6 addresses must be in the same subnet.
  final pulumi.Input<String> peeringIpv6SubnetMask;
  /// The subnet mask of the Alibaba Cloud side and the client side of the VBR instance.The two IP addresses must be in the same subnet.
  final pulumi.Input<String> peeringSubnetMask;
  /// The ID of the leased line instance.
  final pulumi.Input<String> physicalConnectionId;
  /// The status of the resource
  final pulumi.Input<String> status;
  /// The ID of the VBR instance.
  final pulumi.Input<String> vbrId;
  /// VLAN ID of the VBR.
  final pulumi.Input<int> vlanId;

  /// Creates a new [GetVbrPconnAssociationsAssociation].
  /// [circuitCode] The circuit code provided by the operator for the physical connection.
  /// [enableIpv6] Whether IPv6 is enabled.
  /// [id] The ID of the Vbr Pconn Association.
  /// [localGatewayIp] The Alibaba cloud IP address of the VBR instance.
  /// [localIpv6GatewayIp] The IPv6 address on the Alibaba Cloud side of the VBR instance.
  /// [peerGatewayIp] The client IP address of the VBR instance.
  /// [peerIpv6GatewayIp] The IPv6 address of the client side of the VBR instance.
  /// [peeringIpv6SubnetMask] The subnet mask of the Alibaba Cloud side and the client side of the VBR instance.Two IPv6 addresses must be in the same subnet.
  /// [peeringSubnetMask] The subnet mask of the Alibaba Cloud side and the client side of the VBR instance.The two IP addresses must be in the same subnet.
  /// [physicalConnectionId] The ID of the leased line instance.
  /// [status] The status of the resource
  /// [vbrId] The ID of the VBR instance.
  /// [vlanId] VLAN ID of the VBR.
  GetVbrPconnAssociationsAssociation({
    required this.circuitCode,
    required this.enableIpv6,
    required this.id,
    required this.localGatewayIp,
    required this.localIpv6GatewayIp,
    required this.peerGatewayIp,
    required this.peerIpv6GatewayIp,
    required this.peeringIpv6SubnetMask,
    required this.peeringSubnetMask,
    required this.physicalConnectionId,
    required this.status,
    required this.vbrId,
    required this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'circuitCode': circuitCode,
      'enableIpv6': enableIpv6,
      'id': id,
      'localGatewayIp': localGatewayIp,
      'localIpv6GatewayIp': localIpv6GatewayIp,
      'peerGatewayIp': peerGatewayIp,
      'peerIpv6GatewayIp': peerIpv6GatewayIp,
      'peeringIpv6SubnetMask': peeringIpv6SubnetMask,
      'peeringSubnetMask': peeringSubnetMask,
      'physicalConnectionId': physicalConnectionId,
      'status': status,
      'vbrId': vbrId,
      'vlanId': vlanId,
    };
  }

  factory GetVbrPconnAssociationsAssociation.fromMap(Map<String, dynamic> map) {
    return GetVbrPconnAssociationsAssociation(
      circuitCode: (map['circuitCode'] as String).input(),
      enableIpv6: (map['enableIpv6'] as bool).input(),
      id: (map['id'] as String).input(),
      localGatewayIp: (map['localGatewayIp'] as String).input(),
      localIpv6GatewayIp: (map['localIpv6GatewayIp'] as String).input(),
      peerGatewayIp: (map['peerGatewayIp'] as String).input(),
      peerIpv6GatewayIp: (map['peerIpv6GatewayIp'] as String).input(),
      peeringIpv6SubnetMask: (map['peeringIpv6SubnetMask'] as String).input(),
      peeringSubnetMask: (map['peeringSubnetMask'] as String).input(),
      physicalConnectionId: (map['physicalConnectionId'] as String).input(),
      status: (map['status'] as String).input(),
      vbrId: (map['vbrId'] as String).input(),
      vlanId: (map['vlanId'] as int).input(),
    );
  }
}

