// ignore_for_file: unused_element, unnecessary_cast

class DefaultRouteTableRoute {
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

  /// Identifier of a VPC internet gateway or a virtual private gateway.
  final String? gatewayId;

  /// Identifier of an EC2 instance.
  final String? instanceId;

  /// The Ipv6 CIDR block of the route
  final String? ipv6CidrBlock;

  /// Identifier of a VPC NAT gateway.
  final String? natGatewayId;

  /// Identifier of an EC2 network interface.
  final String? networkInterfaceId;

  /// Identifier of an EC2 Transit Gateway.
  final String? transitGatewayId;

  /// Identifier of a VPC Endpoint. This route must be removed prior to VPC Endpoint deletion.
  final String? vpcEndpointId;

  /// Identifier of a VPC peering connection.
  ///
  /// Note that the default route, mapping the VPC's CIDR block to "local", is created implicitly and cannot be specified.
  final String? vpcPeeringConnectionId;

  DefaultRouteTableRoute({
    this.cidrBlock,
    this.coreNetworkArn,
    this.destinationPrefixListId,
    this.egressOnlyGatewayId,
    this.gatewayId,
    this.instanceId,
    this.ipv6CidrBlock,
    this.natGatewayId,
    this.networkInterfaceId,
    this.transitGatewayId,
    this.vpcEndpointId,
    this.vpcPeeringConnectionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
    final instanceIdValue = instanceId;
    if (instanceIdValue != null) {
      map['instanceId'] = instanceIdValue;
    }
    final ipv6CidrBlockValue = ipv6CidrBlock;
    if (ipv6CidrBlockValue != null) {
      map['ipv6CidrBlock'] = ipv6CidrBlockValue;
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

  factory DefaultRouteTableRoute.fromMap(Map<String, dynamic> map) {
    return DefaultRouteTableRoute(
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
      instanceId:
          map['instanceId'] == null ? null : map['instanceId'] as String,
      ipv6CidrBlock:
          map['ipv6CidrBlock'] == null ? null : map['ipv6CidrBlock'] as String,
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
