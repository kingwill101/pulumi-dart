// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkInsightsAnalysisReturnPathComponentRouteTableRoute {
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

  /// Creates a new [GetNetworkInsightsAnalysisReturnPathComponentRouteTableRoute].
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
  GetNetworkInsightsAnalysisReturnPathComponentRouteTableRoute({
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

  factory GetNetworkInsightsAnalysisReturnPathComponentRouteTableRoute.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNetworkInsightsAnalysisReturnPathComponentRouteTableRoute(
      destinationCidr: pulumi.Input.fromValue(map['destinationCidr'] as String),
      destinationPrefixListId: pulumi.Input.fromValue(
        map['destinationPrefixListId'] as String,
      ),
      egressOnlyInternetGatewayId: pulumi.Input.fromValue(
        map['egressOnlyInternetGatewayId'] as String,
      ),
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      natGatewayId: pulumi.Input.fromValue(map['natGatewayId'] as String),
      networkInterfaceId: pulumi.Input.fromValue(
        map['networkInterfaceId'] as String,
      ),
      origin: pulumi.Input.fromValue(map['origin'] as String),
      transitGatewayId: pulumi.Input.fromValue(
        map['transitGatewayId'] as String,
      ),
      vpcPeeringConnectionId: pulumi.Input.fromValue(
        map['vpcPeeringConnectionId'] as String,
      ),
    );
  }
}
