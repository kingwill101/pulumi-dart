// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DefaultRouteTableRoute {
  /// The CIDR block of the route.
  final pulumi.Input<String?>? cidrBlock;
  /// ARN of a core network.
  final pulumi.Input<String?>? coreNetworkArn;
  /// The ID of a managed prefix list destination of the route.
  ///
  /// One of the following target arguments must be supplied:
  final pulumi.Input<String?>? destinationPrefixListId;
  /// Identifier of a VPC Egress Only Internet Gateway.
  final pulumi.Input<String?>? egressOnlyGatewayId;
  /// Identifier of a VPC internet gateway or a virtual private gateway.
  final pulumi.Input<String?>? gatewayId;
  /// Identifier of an EC2 instance.
  final pulumi.Input<String?>? instanceId;
  /// The Ipv6 CIDR block of the route
  final pulumi.Input<String?>? ipv6CidrBlock;
  /// Identifier of a VPC NAT gateway.
  final pulumi.Input<String?>? natGatewayId;
  /// Identifier of an EC2 network interface.
  final pulumi.Input<String?>? networkInterfaceId;
  /// Identifier of an EC2 Transit Gateway.
  final pulumi.Input<String?>? transitGatewayId;
  /// Identifier of a VPC Endpoint. This route must be removed prior to VPC Endpoint deletion.
  final pulumi.Input<String?>? vpcEndpointId;
  /// Identifier of a VPC peering connection.
  ///
  /// Note that the default route, mapping the VPC's CIDR block to "local", is created implicitly and cannot be specified.
  final pulumi.Input<String?>? vpcPeeringConnectionId;

  /// Creates a new [DefaultRouteTableRoute].
  /// [cidrBlock] The CIDR block of the route.
  /// [coreNetworkArn] ARN of a core network.
  /// [destinationPrefixListId] The ID of a managed prefix list destination of the route.
  /// [egressOnlyGatewayId] Identifier of a VPC Egress Only Internet Gateway.
  /// [gatewayId] Identifier of a VPC internet gateway or a virtual private gateway.
  /// [instanceId] Identifier of an EC2 instance.
  /// [ipv6CidrBlock] The Ipv6 CIDR block of the route
  /// [natGatewayId] Identifier of a VPC NAT gateway.
  /// [networkInterfaceId] Identifier of an EC2 network interface.
  /// [transitGatewayId] Identifier of an EC2 Transit Gateway.
  /// [vpcEndpointId] Identifier of a VPC Endpoint. This route must be removed prior to VPC Endpoint deletion.
  /// [vpcPeeringConnectionId] Identifier of a VPC peering connection.
  const DefaultRouteTableRoute({
    this.cidrBlock,
    this.coreNetworkArn,
    this.destinationPrefixListId,
    this.egressOnlyGatewayId,
    this.gatewayId,
    this.instanceId,
    this.ipv6CidrBlock,
    this.natGatewayId,
    this.networkInterfaceId,
    this.transitGatewayId,
    this.vpcEndpointId,
    this.vpcPeeringConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'coreNetworkArn': ?coreNetworkArn,
      'destinationPrefixListId': ?destinationPrefixListId,
      'egressOnlyGatewayId': ?egressOnlyGatewayId,
      'gatewayId': ?gatewayId,
      'instanceId': ?instanceId,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'natGatewayId': ?natGatewayId,
      'networkInterfaceId': ?networkInterfaceId,
      'transitGatewayId': ?transitGatewayId,
      'vpcEndpointId': ?vpcEndpointId,
      'vpcPeeringConnectionId': ?vpcPeeringConnectionId,
    };
  }

  factory DefaultRouteTableRoute.fromMap(Map<String, dynamic> map) {
    return DefaultRouteTableRoute(
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coreNetworkArn: (() { final guardedValue = map['coreNetworkArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPrefixListId: (() { final guardedValue = map['destinationPrefixListId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      egressOnlyGatewayId: (() { final guardedValue = map['egressOnlyGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayId: (() { final guardedValue = map['gatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6CidrBlock: (() { final guardedValue = map['ipv6CidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natGatewayId: (() { final guardedValue = map['natGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceId: (() { final guardedValue = map['networkInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcEndpointId: (() { final guardedValue = map['vpcEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcPeeringConnectionId: (() { final guardedValue = map['vpcPeeringConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
