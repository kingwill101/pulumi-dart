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

  /// Creates a new [GetNetworkInsightsAnalysisExplanationRouteTableRoute].
  /// [destinationCidr] Required.
  /// [destinationPrefixListId] Required.
  /// [egressOnlyInternetGatewayId] Required.
  /// [gatewayId] Required.
  /// [instanceId] Required.
  /// [natGatewayId] Required.
  /// [networkInterfaceId] Required.
  /// [origin] Required.
  /// [transitGatewayId] Required.
  /// [vpcPeeringConnectionId] Required.
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
    return <String, dynamic>{
      'destinationCidr': destinationCidr,
      'destinationPrefixListId': destinationPrefixListId,
      'egressOnlyInternetGatewayId': egressOnlyInternetGatewayId,
      'gatewayId': gatewayId,
      'instanceId': instanceId,
      'natGatewayId': natGatewayId,
      'networkInterfaceId': networkInterfaceId,
      'origin': origin,
      'transitGatewayId': transitGatewayId,
      'vpcPeeringConnectionId': vpcPeeringConnectionId,
    };
  }

  factory GetNetworkInsightsAnalysisExplanationRouteTableRoute.fromMap(Map<String, dynamic> map) {
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

