// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteTableRoute {
  /// Identifier of a carrier gateway. This attribute can only be used when the VPC contains a subnet which is associated with a Wavelength Zone.
  final pulumi.Input<String?>? carrierGatewayId;
  /// The CIDR block of the route.
  final pulumi.Input<String?>? cidrBlock;
  /// ARN of a core network.
  final pulumi.Input<String?>? coreNetworkArn;
  /// The ID of a managed prefix list destination of the route.
  ///
  /// One of the following target arguments must be supplied:
  final pulumi.Input<String?>? destinationPrefixListId;
  /// Identifier of a VPC Egress Only Internet Gateway.
  final pulumi.Input<String?>? egressOnlyGatewayId;
  /// Identifier of a VPC internet gateway, virtual private gateway, or `local`. `local` routes cannot be created but can be adopted or imported. See the example above.
  final pulumi.Input<String?>? gatewayId;
  /// The Ipv6 CIDR block of the route.
  final pulumi.Input<String?>? ipv6CidrBlock;
  /// Identifier of a Outpost local gateway.
  final pulumi.Input<String?>? localGatewayId;
  /// Identifier of a VPC NAT gateway.
  final pulumi.Input<String?>? natGatewayId;
  /// Identifier of an EC2 network interface.
  final pulumi.Input<String?>? networkInterfaceId;
  /// ARN of an ODB network.
  final pulumi.Input<String?>? odbNetworkArn;
  /// Identifier of an EC2 Transit Gateway.
  final pulumi.Input<String?>? transitGatewayId;
  /// Identifier of a VPC Endpoint.
  final pulumi.Input<String?>? vpcEndpointId;
  /// Identifier of a VPC peering connection.
  ///
  /// Note that the default route, mapping the VPC's CIDR block to "local", is created implicitly and cannot be specified.
  final pulumi.Input<String?>? vpcPeeringConnectionId;

  /// Creates a new [RouteTableRoute].
  /// [carrierGatewayId] Identifier of a carrier gateway. This attribute can only be used when the VPC contains a subnet which is associated with a Wavelength Zone.
  /// [cidrBlock] The CIDR block of the route.
  /// [coreNetworkArn] ARN of a core network.
  /// [destinationPrefixListId] The ID of a managed prefix list destination of the route.
  /// [egressOnlyGatewayId] Identifier of a VPC Egress Only Internet Gateway.
  /// [gatewayId] Identifier of a VPC internet gateway, virtual private gateway, or `local`. `local` routes cannot be created but can be adopted or imported. See the example above.
  /// [ipv6CidrBlock] The Ipv6 CIDR block of the route.
  /// [localGatewayId] Identifier of a Outpost local gateway.
  /// [natGatewayId] Identifier of a VPC NAT gateway.
  /// [networkInterfaceId] Identifier of an EC2 network interface.
  /// [odbNetworkArn] ARN of an ODB network.
  /// [transitGatewayId] Identifier of an EC2 Transit Gateway.
  /// [vpcEndpointId] Identifier of a VPC Endpoint.
  /// [vpcPeeringConnectionId] Identifier of a VPC peering connection.
  const RouteTableRoute({
    this.carrierGatewayId,
    this.cidrBlock,
    this.coreNetworkArn,
    this.destinationPrefixListId,
    this.egressOnlyGatewayId,
    this.gatewayId,
    this.ipv6CidrBlock,
    this.localGatewayId,
    this.natGatewayId,
    this.networkInterfaceId,
    this.odbNetworkArn,
    this.transitGatewayId,
    this.vpcEndpointId,
    this.vpcPeeringConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carrierGatewayId': ?carrierGatewayId,
      'cidrBlock': ?cidrBlock,
      'coreNetworkArn': ?coreNetworkArn,
      'destinationPrefixListId': ?destinationPrefixListId,
      'egressOnlyGatewayId': ?egressOnlyGatewayId,
      'gatewayId': ?gatewayId,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'localGatewayId': ?localGatewayId,
      'natGatewayId': ?natGatewayId,
      'networkInterfaceId': ?networkInterfaceId,
      'odbNetworkArn': ?odbNetworkArn,
      'transitGatewayId': ?transitGatewayId,
      'vpcEndpointId': ?vpcEndpointId,
      'vpcPeeringConnectionId': ?vpcPeeringConnectionId,
    };
  }

  factory RouteTableRoute.fromMap(Map<String, dynamic> map) {
    return RouteTableRoute(
      carrierGatewayId: (() { final guardedValue = map['carrierGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coreNetworkArn: (() { final guardedValue = map['coreNetworkArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPrefixListId: (() { final guardedValue = map['destinationPrefixListId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      egressOnlyGatewayId: (() { final guardedValue = map['egressOnlyGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayId: (() { final guardedValue = map['gatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6CidrBlock: (() { final guardedValue = map['ipv6CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localGatewayId: (() { final guardedValue = map['localGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natGatewayId: (() { final guardedValue = map['natGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNetworkArn: (() { final guardedValue = map['odbNetworkArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcEndpointId: (() { final guardedValue = map['vpcEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcPeeringConnectionId: (() { final guardedValue = map['vpcPeeringConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
