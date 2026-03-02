// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkInsightsAnalysisExplanationRouteTableRoute {
  final pulumi.Input<String> destinationCidr;
  final pulumi.Input<String> destinationPrefixListId;
  final pulumi.Input<String> egressOnlyInternetGatewayId;
  final pulumi.Input<String> gatewayId;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> natGatewayId;
  final pulumi.Input<String> networkInterfaceId;
  final pulumi.Input<String> origin;
  final pulumi.Input<String> transitGatewayId;
  final pulumi.Input<String> vpcPeeringConnectionId;

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
      destinationCidr: (map['destinationCidr'] as String).input(),
      destinationPrefixListId: (map['destinationPrefixListId'] as String).input(),
      egressOnlyInternetGatewayId: (map['egressOnlyInternetGatewayId'] as String).input(),
      gatewayId: (map['gatewayId'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      natGatewayId: (map['natGatewayId'] as String).input(),
      networkInterfaceId: (map['networkInterfaceId'] as String).input(),
      origin: (map['origin'] as String).input(),
      transitGatewayId: (map['transitGatewayId'] as String).input(),
      vpcPeeringConnectionId: (map['vpcPeeringConnectionId'] as String).input(),
    );
  }
}

