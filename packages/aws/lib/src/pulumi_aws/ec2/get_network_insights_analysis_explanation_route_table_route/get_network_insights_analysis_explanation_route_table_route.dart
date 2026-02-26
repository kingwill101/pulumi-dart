// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkInsightsAnalysisExplanationRouteTableRoute {
  final String destinationCidr;
  final String destinationPrefixListId;
  final String egressOnlyInternetGatewayId;
  final String gatewayId;
  final String instanceId;
  final String natGatewayId;
  final String networkInterfaceId;
  final String origin;
  final String transitGatewayId;
  final String vpcPeeringConnectionId;

  GetNetworkInsightsAnalysisExplanationRouteTableRoute({
    required this.destinationCidr,
    required this.destinationPrefixListId,
    required this.egressOnlyInternetGatewayId,
    required this.gatewayId,
    required this.instanceId,
    required this.natGatewayId,
    required this.networkInterfaceId,
    required this.origin,
    required this.transitGatewayId,
    required this.vpcPeeringConnectionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationCidr'] = destinationCidr;
    map['destinationPrefixListId'] = destinationPrefixListId;
    map['egressOnlyInternetGatewayId'] = egressOnlyInternetGatewayId;
    map['gatewayId'] = gatewayId;
    map['instanceId'] = instanceId;
    map['natGatewayId'] = natGatewayId;
    map['networkInterfaceId'] = networkInterfaceId;
    map['origin'] = origin;
    map['transitGatewayId'] = transitGatewayId;
    map['vpcPeeringConnectionId'] = vpcPeeringConnectionId;
    return map;
  }

  factory GetNetworkInsightsAnalysisExplanationRouteTableRoute.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkInsightsAnalysisExplanationRouteTableRoute(
      destinationCidr: map['destinationCidr'] as String,
      destinationPrefixListId: map['destinationPrefixListId'] as String,
      egressOnlyInternetGatewayId: map['egressOnlyInternetGatewayId'] as String,
      gatewayId: map['gatewayId'] as String,
      instanceId: map['instanceId'] as String,
      natGatewayId: map['natGatewayId'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      origin: map['origin'] as String,
      transitGatewayId: map['transitGatewayId'] as String,
      vpcPeeringConnectionId: map['vpcPeeringConnectionId'] as String,
    );
  }
}
