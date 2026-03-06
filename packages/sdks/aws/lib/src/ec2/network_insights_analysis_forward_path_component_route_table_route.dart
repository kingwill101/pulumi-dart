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
  const NetworkInsightsAnalysisForwardPathComponentRouteTableRoute({
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
      destinationCidr: (() { final guardedValue = map['destinationCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPrefixListId: (() { final guardedValue = map['destinationPrefixListId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      egressOnlyInternetGatewayId: (() { final guardedValue = map['egressOnlyInternetGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayId: (() { final guardedValue = map['gatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natGatewayId: (() { final guardedValue = map['natGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      origin: (() { final guardedValue = map['origin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcPeeringConnectionId: (() { final guardedValue = map['vpcPeeringConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

