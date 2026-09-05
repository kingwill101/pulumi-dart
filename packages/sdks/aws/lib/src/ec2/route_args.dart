// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_route_route_args_doc}
/// The set of arguments for Route.
/// {@endtemplate}
/// {@macro pulumi_ec2_route_route_args_doc}
class RouteArgs {
  /// Identifier of a carrier gateway. This attribute can only be used when the VPC contains a subnet which is associated with a Wavelength Zone.
  final pulumi.Input<String?>? carrierGatewayId;
  /// ARN of a core network.
  final pulumi.Input<String?>? coreNetworkArn;
  /// The destination CIDR block.
  final pulumi.Input<String?>? destinationCidrBlock;
  /// The destination IPv6 CIDR block.
  final pulumi.Input<String?>? destinationIpv6CidrBlock;
  /// The ID of a managed prefix list destination.
  ///
  /// One of the following target arguments must be supplied:
  final pulumi.Input<String?>? destinationPrefixListId;
  /// Identifier of a VPC Egress Only Internet Gateway.
  final pulumi.Input<String?>? egressOnlyGatewayId;
  /// Identifier of a VPC internet gateway or a virtual private gateway. Specify `local` when updating a previously imported local route.
  final pulumi.Input<String?>? gatewayId;
  /// Identifier of a Outpost local gateway.
  final pulumi.Input<String?>? localGatewayId;
  /// Identifier of a VPC NAT gateway.
  final pulumi.Input<String?>? natGatewayId;
  /// Identifier of an EC2 network interface.
  final pulumi.Input<String?>? networkInterfaceId;
  /// ARN of an ODB network.
  final pulumi.Input<String?>? odbNetworkArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The ID of the routing table.
  ///
  /// One of the following destination arguments must be supplied:
  final pulumi.Input<String> routeTableId;
  /// Identifier of an EC2 Transit Gateway.
  final pulumi.Input<String?>? transitGatewayId;
  /// Identifier of a VPC Endpoint.
  final pulumi.Input<String?>? vpcEndpointId;
  /// Identifier of a VPC peering connection.
  ///
  /// Note that the default route, mapping the VPC's CIDR block to "local", is created implicitly and cannot be specified.
  final pulumi.Input<String?>? vpcPeeringConnectionId;

  /// Creates a new [RouteArgs].
  /// [carrierGatewayId] Identifier of a carrier gateway. This attribute can only be used when the VPC contains a subnet which is associated with a Wavelength Zone.
  /// [coreNetworkArn] ARN of a core network.
  /// [destinationCidrBlock] The destination CIDR block.
  /// [destinationIpv6CidrBlock] The destination IPv6 CIDR block.
  /// [destinationPrefixListId] The ID of a managed prefix list destination.
  /// [egressOnlyGatewayId] Identifier of a VPC Egress Only Internet Gateway.
  /// [gatewayId] Identifier of a VPC internet gateway or a virtual private gateway. Specify `local` when updating a previously imported local route.
  /// [localGatewayId] Identifier of a Outpost local gateway.
  /// [natGatewayId] Identifier of a VPC NAT gateway.
  /// [networkInterfaceId] Identifier of an EC2 network interface.
  /// [odbNetworkArn] ARN of an ODB network.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableId] The ID of the routing table.
  /// [transitGatewayId] Identifier of an EC2 Transit Gateway.
  /// [vpcEndpointId] Identifier of a VPC Endpoint.
  /// [vpcPeeringConnectionId] Identifier of a VPC peering connection.
  const RouteArgs({
    this.carrierGatewayId,
    this.coreNetworkArn,
    this.destinationCidrBlock,
    this.destinationIpv6CidrBlock,
    this.destinationPrefixListId,
    this.egressOnlyGatewayId,
    this.gatewayId,
    this.localGatewayId,
    this.natGatewayId,
    this.networkInterfaceId,
    this.odbNetworkArn,
    this.region,
    required this.routeTableId,
    this.transitGatewayId,
    this.vpcEndpointId,
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
      'localGatewayId': ?localGatewayId,
      'natGatewayId': ?natGatewayId,
      'networkInterfaceId': ?networkInterfaceId,
      'odbNetworkArn': ?odbNetworkArn,
      'region': ?region,
      'routeTableId': routeTableId,
      'transitGatewayId': ?transitGatewayId,
      'vpcEndpointId': ?vpcEndpointId,
      'vpcPeeringConnectionId': ?vpcPeeringConnectionId,
    };
  }

  factory RouteArgs.fromMap(Map<String, dynamic> map) {
    return RouteArgs(
      carrierGatewayId: (() { final guardedValue = map['carrierGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coreNetworkArn: (() { final guardedValue = map['coreNetworkArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationCidrBlock: (() { final guardedValue = map['destinationCidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationIpv6CidrBlock: (() { final guardedValue = map['destinationIpv6CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPrefixListId: (() { final guardedValue = map['destinationPrefixListId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      egressOnlyGatewayId: (() { final guardedValue = map['egressOnlyGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayId: (() { final guardedValue = map['gatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localGatewayId: (() { final guardedValue = map['localGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natGatewayId: (() { final guardedValue = map['natGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      odbNetworkArn: (() { final guardedValue = map['odbNetworkArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTableId: pulumi.Input.fromValue(map['routeTableId'] as String),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcEndpointId: (() { final guardedValue = map['vpcEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcPeeringConnectionId: (() { final guardedValue = map['vpcPeeringConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
