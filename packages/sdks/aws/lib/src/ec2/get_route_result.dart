// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRoute.
class GetRouteResult {
  final String? carrierGatewayId;
  final String? coreNetworkArn;
  final String? destinationCidrBlock;
  final String? destinationIpv6CidrBlock;
  final String? destinationPrefixListId;
  final String? egressOnlyGatewayId;
  final String? gatewayId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceId;
  final String? localGatewayId;
  final String? natGatewayId;
  final String? networkInterfaceId;
  final String? odbNetworkArn;
  final String? region;
  final String? routeTableId;
  final String? transitGatewayId;
  final String? vpcPeeringConnectionId;

  /// Creates a new [GetRouteResult].
  /// [carrierGatewayId] Optional.
  /// [coreNetworkArn] Optional.
  /// [destinationCidrBlock] Optional.
  /// [destinationIpv6CidrBlock] Optional.
  /// [destinationPrefixListId] Optional.
  /// [egressOnlyGatewayId] Optional.
  /// [gatewayId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Optional.
  /// [localGatewayId] Optional.
  /// [natGatewayId] Optional.
  /// [networkInterfaceId] Optional.
  /// [odbNetworkArn] Optional.
  /// [region] Optional.
  /// [routeTableId] Optional.
  /// [transitGatewayId] Optional.
  /// [vpcPeeringConnectionId] Optional.
  const GetRouteResult({
    this.carrierGatewayId,
    this.coreNetworkArn,
    this.destinationCidrBlock,
    this.destinationIpv6CidrBlock,
    this.destinationPrefixListId,
    this.egressOnlyGatewayId,
    this.gatewayId,
    this.id,
    this.instanceId,
    this.localGatewayId,
    this.natGatewayId,
    this.networkInterfaceId,
    this.odbNetworkArn,
    this.region,
    this.routeTableId,
    this.transitGatewayId,
    this.vpcPeeringConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carrierGatewayId': ?carrierGatewayId,
      'coreNetworkArn': ?coreNetworkArn,
      'destinationCidrBlock': ?destinationCidrBlock,
      'destinationIpv6CidrBlock': ?destinationIpv6CidrBlock,
      'destinationPrefixListId': ?destinationPrefixListId,
      'egressOnlyGatewayId': ?egressOnlyGatewayId,
      'gatewayId': ?gatewayId,
      'id': ?id,
      'instanceId': ?instanceId,
      'localGatewayId': ?localGatewayId,
      'natGatewayId': ?natGatewayId,
      'networkInterfaceId': ?networkInterfaceId,
      'odbNetworkArn': ?odbNetworkArn,
      'region': ?region,
      'routeTableId': ?routeTableId,
      'transitGatewayId': ?transitGatewayId,
      'vpcPeeringConnectionId': ?vpcPeeringConnectionId,
    };
  }

  factory GetRouteResult.fromMap(Map<String, dynamic> map) {
    return GetRouteResult(
      carrierGatewayId: (() { final guardedValue = map['carrierGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      coreNetworkArn: (() { final guardedValue = map['coreNetworkArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationCidrBlock: (() { final guardedValue = map['destinationCidrBlock']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationIpv6CidrBlock: (() { final guardedValue = map['destinationIpv6CidrBlock']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationPrefixListId: (() { final guardedValue = map['destinationPrefixListId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      egressOnlyGatewayId: (() { final guardedValue = map['egressOnlyGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gatewayId: (() { final guardedValue = map['gatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localGatewayId: (() { final guardedValue = map['localGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      natGatewayId: (() { final guardedValue = map['natGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      odbNetworkArn: (() { final guardedValue = map['odbNetworkArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routeTableId: (() { final guardedValue = map['routeTableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcPeeringConnectionId: (() { final guardedValue = map['vpcPeeringConnectionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
