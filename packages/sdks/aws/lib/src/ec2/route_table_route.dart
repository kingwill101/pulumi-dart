// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteTableRoute {
  /// Identifier of a carrier gateway. This attribute can only be used when the VPC contains a subnet which is associated with a Wavelength Zone.
  final pulumi.Input<String>? carrierGatewayId;
  /// The CIDR block of the route.
  final pulumi.Input<String>? cidrBlock;
  /// The Amazon Resource Name (ARN) of a core network.
  final pulumi.Input<String>? coreNetworkArn;
  /// The ID of a managed prefix list destination of the route.
  ///
  /// One of the following target arguments must be supplied:
  final pulumi.Input<String>? destinationPrefixListId;
  /// Identifier of a VPC Egress Only Internet Gateway.
  final pulumi.Input<String>? egressOnlyGatewayId;
  /// Identifier of a VPC internet gateway, virtual private gateway, or `local`. `local` routes cannot be created but can be adopted or imported. See the example above.
  final pulumi.Input<String>? gatewayId;
  /// The Ipv6 CIDR block of the route.
  final pulumi.Input<String>? ipv6CidrBlock;
  /// Identifier of a Outpost local gateway.
  final pulumi.Input<String>? localGatewayId;
  /// Identifier of a VPC NAT gateway.
  final pulumi.Input<String>? natGatewayId;
  /// Identifier of an EC2 network interface.
  final pulumi.Input<String>? networkInterfaceId;
  /// Identifier of an EC2 Transit Gateway.
  final pulumi.Input<String>? transitGatewayId;
  /// Identifier of a VPC Endpoint.
  final pulumi.Input<String>? vpcEndpointId;
  /// Identifier of a VPC peering connection.
  ///
  /// Note that the default route, mapping the VPC's CIDR block to "local", is created implicitly and cannot be specified.
  final pulumi.Input<String>? vpcPeeringConnectionId;

  /// Creates a new [RouteTableRoute].
  /// [carrierGatewayId] Identifier of a carrier gateway. This attribute can only be used when the VPC contains a subnet which is associated with a Wavelength Zone.
  /// [cidrBlock] The CIDR block of the route.
  /// [coreNetworkArn] The Amazon Resource Name (ARN) of a core network.
  /// [destinationPrefixListId] The ID of a managed prefix list destination of the route.
  /// [egressOnlyGatewayId] Identifier of a VPC Egress Only Internet Gateway.
  /// [gatewayId] Identifier of a VPC internet gateway, virtual private gateway, or `local`. `local` routes cannot be created but can be adopted or imported. See the example above.
  /// [ipv6CidrBlock] The Ipv6 CIDR block of the route.
  /// [localGatewayId] Identifier of a Outpost local gateway.
  /// [natGatewayId] Identifier of a VPC NAT gateway.
  /// [networkInterfaceId] Identifier of an EC2 network interface.
  /// [transitGatewayId] Identifier of an EC2 Transit Gateway.
  /// [vpcEndpointId] Identifier of a VPC Endpoint.
  /// [vpcPeeringConnectionId] Identifier of a VPC peering connection.
  RouteTableRoute({
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
      'transitGatewayId': ?transitGatewayId,
      'vpcEndpointId': ?vpcEndpointId,
      'vpcPeeringConnectionId': ?vpcPeeringConnectionId,
    };
  }

  factory RouteTableRoute.fromMap(Map<String, dynamic> map) {
    return RouteTableRoute(
      carrierGatewayId: map['carrierGatewayId'] == null ? null : (map['carrierGatewayId'] as String).input(),
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock'] as String).input(),
      coreNetworkArn: map['coreNetworkArn'] == null ? null : (map['coreNetworkArn'] as String).input(),
      destinationPrefixListId: map['destinationPrefixListId'] == null ? null : (map['destinationPrefixListId'] as String).input(),
      egressOnlyGatewayId: map['egressOnlyGatewayId'] == null ? null : (map['egressOnlyGatewayId'] as String).input(),
      gatewayId: map['gatewayId'] == null ? null : (map['gatewayId'] as String).input(),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : (map['ipv6CidrBlock'] as String).input(),
      localGatewayId: map['localGatewayId'] == null ? null : (map['localGatewayId'] as String).input(),
      natGatewayId: map['natGatewayId'] == null ? null : (map['natGatewayId'] as String).input(),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : (map['networkInterfaceId'] as String).input(),
      transitGatewayId: map['transitGatewayId'] == null ? null : (map['transitGatewayId'] as String).input(),
      vpcEndpointId: map['vpcEndpointId'] == null ? null : (map['vpcEndpointId'] as String).input(),
      vpcPeeringConnectionId: map['vpcPeeringConnectionId'] == null ? null : (map['vpcPeeringConnectionId'] as String).input(),
    );
  }
}

