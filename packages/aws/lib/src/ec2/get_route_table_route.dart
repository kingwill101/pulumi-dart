// ignore_for_file: unused_element, unnecessary_cast

class GetRouteTableRoute {
  /// ID of the Carrier Gateway.
  final String carrierGatewayId;

  /// CIDR block of the route.
  final String cidrBlock;

  /// ARN of the core network.
  final String coreNetworkArn;

  /// The ID of a managed prefix list destination of the route.
  final String destinationPrefixListId;

  /// ID of the Egress Only Internet Gateway.
  final String egressOnlyGatewayId;

  /// ID of an Internet Gateway or Virtual Private Gateway which is connected to the Route Table (not exported if not passed as a parameter).
  final String gatewayId;

  /// EC2 instance ID.
  final String instanceId;

  /// IPv6 CIDR block of the route.
  final String ipv6CidrBlock;

  /// Local Gateway ID.
  final String localGatewayId;

  /// NAT Gateway ID.
  final String natGatewayId;

  /// ID of the elastic network interface (eni) to use.
  final String networkInterfaceId;

  /// EC2 Transit Gateway ID.
  final String transitGatewayId;

  /// VPC Endpoint ID.
  final String vpcEndpointId;

  /// VPC Peering ID.
  final String vpcPeeringConnectionId;

  /// Creates a new [GetRouteTableRoute].
  /// [carrierGatewayId] ID of the Carrier Gateway.
  /// [cidrBlock] CIDR block of the route.
  /// [coreNetworkArn] ARN of the core network.
  /// [destinationPrefixListId] The ID of a managed prefix list destination of the route.
  /// [egressOnlyGatewayId] ID of the Egress Only Internet Gateway.
  /// [gatewayId] ID of an Internet Gateway or Virtual Private Gateway which is connected to the Route Table (not exported if not passed as a parameter).
  /// [instanceId] EC2 instance ID.
  /// [ipv6CidrBlock] IPv6 CIDR block of the route.
  /// [localGatewayId] Local Gateway ID.
  /// [natGatewayId] NAT Gateway ID.
  /// [networkInterfaceId] ID of the elastic network interface (eni) to use.
  /// [transitGatewayId] EC2 Transit Gateway ID.
  /// [vpcEndpointId] VPC Endpoint ID.
  /// [vpcPeeringConnectionId] VPC Peering ID.
  GetRouteTableRoute({
    required this.carrierGatewayId,
    required this.cidrBlock,
    required this.coreNetworkArn,
    required this.destinationPrefixListId,
    required this.egressOnlyGatewayId,
    required this.gatewayId,
    required this.instanceId,
    required this.ipv6CidrBlock,
    required this.localGatewayId,
    required this.natGatewayId,
    required this.networkInterfaceId,
    required this.transitGatewayId,
    required this.vpcEndpointId,
    required this.vpcPeeringConnectionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['carrierGatewayId'] = carrierGatewayId;
    map['cidrBlock'] = cidrBlock;
    map['coreNetworkArn'] = coreNetworkArn;
    map['destinationPrefixListId'] = destinationPrefixListId;
    map['egressOnlyGatewayId'] = egressOnlyGatewayId;
    map['gatewayId'] = gatewayId;
    map['instanceId'] = instanceId;
    map['ipv6CidrBlock'] = ipv6CidrBlock;
    map['localGatewayId'] = localGatewayId;
    map['natGatewayId'] = natGatewayId;
    map['networkInterfaceId'] = networkInterfaceId;
    map['transitGatewayId'] = transitGatewayId;
    map['vpcEndpointId'] = vpcEndpointId;
    map['vpcPeeringConnectionId'] = vpcPeeringConnectionId;
    return map;
  }

  factory GetRouteTableRoute.fromMap(Map<String, dynamic> map) {
    return GetRouteTableRoute(
      carrierGatewayId: map['carrierGatewayId'] as String,
      cidrBlock: map['cidrBlock'] as String,
      coreNetworkArn: map['coreNetworkArn'] as String,
      destinationPrefixListId: map['destinationPrefixListId'] as String,
      egressOnlyGatewayId: map['egressOnlyGatewayId'] as String,
      gatewayId: map['gatewayId'] as String,
      instanceId: map['instanceId'] as String,
      ipv6CidrBlock: map['ipv6CidrBlock'] as String,
      localGatewayId: map['localGatewayId'] as String,
      natGatewayId: map['natGatewayId'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      transitGatewayId: map['transitGatewayId'] as String,
      vpcEndpointId: map['vpcEndpointId'] as String,
      vpcPeeringConnectionId: map['vpcPeeringConnectionId'] as String,
    );
  }
}
