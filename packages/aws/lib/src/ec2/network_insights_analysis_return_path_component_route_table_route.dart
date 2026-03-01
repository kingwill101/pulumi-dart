// ignore_for_file: unused_element, unnecessary_cast

class NetworkInsightsAnalysisReturnPathComponentRouteTableRoute {
  final String? destinationCidr;
  final String? destinationPrefixListId;
  final String? egressOnlyInternetGatewayId;
  final String? gatewayId;
  final String? instanceId;
  final String? natGatewayId;
  final String? networkInterfaceId;
  final String? origin;
  final String? transitGatewayId;
  final String? vpcPeeringConnectionId;

  /// Creates a new [NetworkInsightsAnalysisReturnPathComponentRouteTableRoute].
  /// [destinationCidr] Optional.
  /// [destinationPrefixListId] Optional.
  /// [egressOnlyInternetGatewayId] Optional.
  /// [gatewayId] Optional.
  /// [instanceId] Optional.
  /// [natGatewayId] Optional.
  /// [networkInterfaceId] Optional.
  /// [origin] Optional.
  /// [transitGatewayId] Optional.
  /// [vpcPeeringConnectionId] Optional.
  NetworkInsightsAnalysisReturnPathComponentRouteTableRoute({
    this.destinationCidr,
    this.destinationPrefixListId,
    this.egressOnlyInternetGatewayId,
    this.gatewayId,
    this.instanceId,
    this.natGatewayId,
    this.networkInterfaceId,
    this.origin,
    this.transitGatewayId,
    this.vpcPeeringConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidr': ?destinationCidr,
      'destinationPrefixListId': ?destinationPrefixListId,
      'egressOnlyInternetGatewayId': ?egressOnlyInternetGatewayId,
      'gatewayId': ?gatewayId,
      'instanceId': ?instanceId,
      'natGatewayId': ?natGatewayId,
      'networkInterfaceId': ?networkInterfaceId,
      'origin': ?origin,
      'transitGatewayId': ?transitGatewayId,
      'vpcPeeringConnectionId': ?vpcPeeringConnectionId,
    };
  }

  factory NetworkInsightsAnalysisReturnPathComponentRouteTableRoute.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInsightsAnalysisReturnPathComponentRouteTableRoute(
      destinationCidr: map['destinationCidr'] == null
          ? null
          : map['destinationCidr'] as String,
      destinationPrefixListId: map['destinationPrefixListId'] == null
          ? null
          : map['destinationPrefixListId'] as String,
      egressOnlyInternetGatewayId: map['egressOnlyInternetGatewayId'] == null
          ? null
          : map['egressOnlyInternetGatewayId'] as String,
      gatewayId: map['gatewayId'] == null ? null : map['gatewayId'] as String,
      instanceId: map['instanceId'] == null
          ? null
          : map['instanceId'] as String,
      natGatewayId: map['natGatewayId'] == null
          ? null
          : map['natGatewayId'] as String,
      networkInterfaceId: map['networkInterfaceId'] == null
          ? null
          : map['networkInterfaceId'] as String,
      origin: map['origin'] == null ? null : map['origin'] as String,
      transitGatewayId: map['transitGatewayId'] == null
          ? null
          : map['transitGatewayId'] as String,
      vpcPeeringConnectionId: map['vpcPeeringConnectionId'] == null
          ? null
          : map['vpcPeeringConnectionId'] as String,
    );
  }
}
