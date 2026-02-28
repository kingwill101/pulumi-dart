// ignore_for_file: unused_element, unnecessary_cast

class RouteTableRoute {
  /// Identifier of a carrier gateway. This attribute can only be used when the VPC contains a subnet which is associated with a Wavelength Zone.
  final String? carrierGatewayId;

  /// The CIDR block of the route.
  final String? cidrBlock;

  /// The Amazon Resource Name (ARN) of a core network.
  final String? coreNetworkArn;

  /// The ID of a managed prefix list destination of the route.
  ///
  /// One of the following target arguments must be supplied:
  final String? destinationPrefixListId;

  /// Identifier of a VPC Egress Only Internet Gateway.
  final String? egressOnlyGatewayId;

  /// Identifier of a VPC internet gateway, virtual private gateway, or `local`. `local` routes cannot be created but can be adopted or imported. See the example above.
  final String? gatewayId;

  /// The Ipv6 CIDR block of the route.
  final String? ipv6CidrBlock;

  /// Identifier of a Outpost local gateway.
  final String? localGatewayId;

  /// Identifier of a VPC NAT gateway.
  final String? natGatewayId;

  /// Identifier of an EC2 network interface.
  final String? networkInterfaceId;

  /// Identifier of an EC2 Transit Gateway.
  final String? transitGatewayId;

  /// Identifier of a VPC Endpoint.
  final String? vpcEndpointId;

  /// Identifier of a VPC peering connection.
  ///
  /// Note that the default route, mapping the VPC's CIDR block to "local", is created implicitly and cannot be specified.
  final String? vpcPeeringConnectionId;

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
    final map = <String, dynamic>{};
    final carrierGatewayIdValue = carrierGatewayId;
    if (carrierGatewayIdValue != null) {
      map['carrierGatewayId'] = carrierGatewayIdValue;
    }
    final cidrBlockValue = cidrBlock;
    if (cidrBlockValue != null) {
      map['cidrBlock'] = cidrBlockValue;
    }
    final coreNetworkArnValue = coreNetworkArn;
    if (coreNetworkArnValue != null) {
      map['coreNetworkArn'] = coreNetworkArnValue;
    }
    final destinationPrefixListIdValue = destinationPrefixListId;
    if (destinationPrefixListIdValue != null) {
      map['destinationPrefixListId'] = destinationPrefixListIdValue;
    }
    final egressOnlyGatewayIdValue = egressOnlyGatewayId;
    if (egressOnlyGatewayIdValue != null) {
      map['egressOnlyGatewayId'] = egressOnlyGatewayIdValue;
    }
    final gatewayIdValue = gatewayId;
    if (gatewayIdValue != null) {
      map['gatewayId'] = gatewayIdValue;
    }
    final ipv6CidrBlockValue = ipv6CidrBlock;
    if (ipv6CidrBlockValue != null) {
      map['ipv6CidrBlock'] = ipv6CidrBlockValue;
    }
    final localGatewayIdValue = localGatewayId;
    if (localGatewayIdValue != null) {
      map['localGatewayId'] = localGatewayIdValue;
    }
    final natGatewayIdValue = natGatewayId;
    if (natGatewayIdValue != null) {
      map['natGatewayId'] = natGatewayIdValue;
    }
    final networkInterfaceIdValue = networkInterfaceId;
    if (networkInterfaceIdValue != null) {
      map['networkInterfaceId'] = networkInterfaceIdValue;
    }
    final transitGatewayIdValue = transitGatewayId;
    if (transitGatewayIdValue != null) {
      map['transitGatewayId'] = transitGatewayIdValue;
    }
    final vpcEndpointIdValue = vpcEndpointId;
    if (vpcEndpointIdValue != null) {
      map['vpcEndpointId'] = vpcEndpointIdValue;
    }
    final vpcPeeringConnectionIdValue = vpcPeeringConnectionId;
    if (vpcPeeringConnectionIdValue != null) {
      map['vpcPeeringConnectionId'] = vpcPeeringConnectionIdValue;
    }
    return map;
  }

  factory RouteTableRoute.fromMap(Map<String, dynamic> map) {
    return RouteTableRoute(
      carrierGatewayId: map['carrierGatewayId'] == null
          ? null
          : map['carrierGatewayId'] as String,
      cidrBlock: map['cidrBlock'] == null ? null : map['cidrBlock'] as String,
      coreNetworkArn: map['coreNetworkArn'] == null
          ? null
          : map['coreNetworkArn'] as String,
      destinationPrefixListId: map['destinationPrefixListId'] == null
          ? null
          : map['destinationPrefixListId'] as String,
      egressOnlyGatewayId: map['egressOnlyGatewayId'] == null
          ? null
          : map['egressOnlyGatewayId'] as String,
      gatewayId: map['gatewayId'] == null ? null : map['gatewayId'] as String,
      ipv6CidrBlock:
          map['ipv6CidrBlock'] == null ? null : map['ipv6CidrBlock'] as String,
      localGatewayId: map['localGatewayId'] == null
          ? null
          : map['localGatewayId'] as String,
      natGatewayId:
          map['natGatewayId'] == null ? null : map['natGatewayId'] as String,
      networkInterfaceId: map['networkInterfaceId'] == null
          ? null
          : map['networkInterfaceId'] as String,
      transitGatewayId: map['transitGatewayId'] == null
          ? null
          : map['transitGatewayId'] as String,
      vpcEndpointId:
          map['vpcEndpointId'] == null ? null : map['vpcEndpointId'] as String,
      vpcPeeringConnectionId: map['vpcPeeringConnectionId'] == null
          ? null
          : map['vpcPeeringConnectionId'] as String,
    );
  }
}
