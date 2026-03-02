// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsAnalysisForwardPathComponentRouteTableRoute {
  final pulumi.Input<String>? destinationCidr;
  final pulumi.Input<String>? destinationPrefixListId;
  final pulumi.Input<String>? egressOnlyInternetGatewayId;
  final pulumi.Input<String>? gatewayId;
  final pulumi.Input<String>? instanceId;
  final pulumi.Input<String>? natGatewayId;
  final pulumi.Input<String>? networkInterfaceId;
  final pulumi.Input<String>? origin;
  final pulumi.Input<String>? transitGatewayId;
  final pulumi.Input<String>? vpcPeeringConnectionId;

  /// Creates a new [NetworkInsightsAnalysisForwardPathComponentRouteTableRoute].
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
  NetworkInsightsAnalysisForwardPathComponentRouteTableRoute({
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

  factory NetworkInsightsAnalysisForwardPathComponentRouteTableRoute.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsAnalysisForwardPathComponentRouteTableRoute(
      destinationCidr: map['destinationCidr'] == null ? null : (map['destinationCidr'] as String).input(),
      destinationPrefixListId: map['destinationPrefixListId'] == null ? null : (map['destinationPrefixListId'] as String).input(),
      egressOnlyInternetGatewayId: map['egressOnlyInternetGatewayId'] == null ? null : (map['egressOnlyInternetGatewayId'] as String).input(),
      gatewayId: map['gatewayId'] == null ? null : (map['gatewayId'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      natGatewayId: map['natGatewayId'] == null ? null : (map['natGatewayId'] as String).input(),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : (map['networkInterfaceId'] as String).input(),
      origin: map['origin'] == null ? null : (map['origin'] as String).input(),
      transitGatewayId: map['transitGatewayId'] == null ? null : (map['transitGatewayId'] as String).input(),
      vpcPeeringConnectionId: map['vpcPeeringConnectionId'] == null ? null : (map['vpcPeeringConnectionId'] as String).input(),
    );
  }
}

