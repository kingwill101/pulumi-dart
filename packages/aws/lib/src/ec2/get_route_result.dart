// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRoute.
class GetRouteResult {
  final String carrierGatewayId;
  final String coreNetworkArn;
  final String destinationCidrBlock;
  final String destinationIpv6CidrBlock;
  final String destinationPrefixListId;
  final String egressOnlyGatewayId;
  final String gatewayId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final String localGatewayId;
  final String natGatewayId;
  final String networkInterfaceId;
  final String region;
  final String routeTableId;
  final String transitGatewayId;
  final String vpcPeeringConnectionId;

  /// Creates a new [GetRouteResult].
  /// [carrierGatewayId] Required.
  /// [coreNetworkArn] Required.
  /// [destinationCidrBlock] Required.
  /// [destinationIpv6CidrBlock] Required.
  /// [destinationPrefixListId] Required.
  /// [egressOnlyGatewayId] Required.
  /// [gatewayId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Required.
  /// [localGatewayId] Required.
  /// [natGatewayId] Required.
  /// [networkInterfaceId] Required.
  /// [region] Required.
  /// [routeTableId] Required.
  /// [transitGatewayId] Required.
  /// [vpcPeeringConnectionId] Required.
  GetRouteResult({
    required this.carrierGatewayId,
    required this.coreNetworkArn,
    required this.destinationCidrBlock,
    required this.destinationIpv6CidrBlock,
    required this.destinationPrefixListId,
    required this.egressOnlyGatewayId,
    required this.gatewayId,
    required this.id,
    required this.instanceId,
    required this.localGatewayId,
    required this.natGatewayId,
    required this.networkInterfaceId,
    required this.region,
    required this.routeTableId,
    required this.transitGatewayId,
    required this.vpcPeeringConnectionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['carrierGatewayId'] = carrierGatewayId;
    map['coreNetworkArn'] = coreNetworkArn;
    map['destinationCidrBlock'] = destinationCidrBlock;
    map['destinationIpv6CidrBlock'] = destinationIpv6CidrBlock;
    map['destinationPrefixListId'] = destinationPrefixListId;
    map['egressOnlyGatewayId'] = egressOnlyGatewayId;
    map['gatewayId'] = gatewayId;
    map['id'] = id;
    map['instanceId'] = instanceId;
    map['localGatewayId'] = localGatewayId;
    map['natGatewayId'] = natGatewayId;
    map['networkInterfaceId'] = networkInterfaceId;
    map['region'] = region;
    map['routeTableId'] = routeTableId;
    map['transitGatewayId'] = transitGatewayId;
    map['vpcPeeringConnectionId'] = vpcPeeringConnectionId;
    return map;
  }

  factory GetRouteResult.fromMap(Map<String, dynamic> map) {
    return GetRouteResult(
      carrierGatewayId: map['carrierGatewayId'] as String,
      coreNetworkArn: map['coreNetworkArn'] as String,
      destinationCidrBlock: map['destinationCidrBlock'] as String,
      destinationIpv6CidrBlock: map['destinationIpv6CidrBlock'] as String,
      destinationPrefixListId: map['destinationPrefixListId'] as String,
      egressOnlyGatewayId: map['egressOnlyGatewayId'] as String,
      gatewayId: map['gatewayId'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      localGatewayId: map['localGatewayId'] as String,
      natGatewayId: map['natGatewayId'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      region: map['region'] as String,
      routeTableId: map['routeTableId'] as String,
      transitGatewayId: map['transitGatewayId'] as String,
      vpcPeeringConnectionId: map['vpcPeeringConnectionId'] as String,
    );
  }
}
