// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Route resources.
class RouteState {
  /// Identifier of a carrier gateway. This attribute can only be used when the VPC contains a subnet which is associated with a Wavelength Zone.
  final pulumi.Input<String>? carrierGatewayId;
  /// The Amazon Resource Name (ARN) of a core network.
  final pulumi.Input<String>? coreNetworkArn;
  /// The destination CIDR block.
  final pulumi.Input<String>? destinationCidrBlock;
  /// The destination IPv6 CIDR block.
  final pulumi.Input<String>? destinationIpv6CidrBlock;
  /// The ID of a managed prefix list destination.
  ///
  /// One of the following target arguments must be supplied:
  final pulumi.Input<String>? destinationPrefixListId;
  /// Identifier of a VPC Egress Only Internet Gateway.
  final pulumi.Input<String>? egressOnlyGatewayId;
  /// Identifier of a VPC internet gateway or a virtual private gateway. Specify `local` when updating a previously imported local route.
  final pulumi.Input<String>? gatewayId;
  /// Identifier of an EC2 instance.
  final pulumi.Input<String>? instanceId;
  /// The AWS account ID of the owner of the EC2 instance.
  final pulumi.Input<String>? instanceOwnerId;
  /// Identifier of a Outpost local gateway.
  final pulumi.Input<String>? localGatewayId;
  /// Identifier of a VPC NAT gateway.
  final pulumi.Input<String>? natGatewayId;
  /// Identifier of an EC2 network interface.
  final pulumi.Input<String>? networkInterfaceId;
  /// How the route was created - `CreateRouteTable`, `CreateRoute` or `EnableVgwRoutePropagation`.
  final pulumi.Input<String>? origin;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the routing table.
  ///
  /// One of the following destination arguments must be supplied:
  final pulumi.Input<String>? routeTableId;
  /// The state of the route - `active` or `blackhole`.
  final pulumi.Input<String>? state;
  /// Identifier of an EC2 Transit Gateway.
  final pulumi.Input<String>? transitGatewayId;
  /// Identifier of a VPC Endpoint.
  final pulumi.Input<String>? vpcEndpointId;
  /// Identifier of a VPC peering connection.
  ///
  /// Note that the default route, mapping the VPC's CIDR block to "local", is created implicitly and cannot be specified.
  final pulumi.Input<String>? vpcPeeringConnectionId;

  /// Creates a new [RouteState].
  /// [carrierGatewayId] Identifier of a carrier gateway. This attribute can only be used when the VPC contains a subnet which is associated with a Wavelength Zone.
  /// [coreNetworkArn] The Amazon Resource Name (ARN) of a core network.
  /// [destinationCidrBlock] The destination CIDR block.
  /// [destinationIpv6CidrBlock] The destination IPv6 CIDR block.
  /// [destinationPrefixListId] The ID of a managed prefix list destination.
  /// [egressOnlyGatewayId] Identifier of a VPC Egress Only Internet Gateway.
  /// [gatewayId] Identifier of a VPC internet gateway or a virtual private gateway. Specify `local` when updating a previously imported local route.
  /// [instanceId] Identifier of an EC2 instance.
  /// [instanceOwnerId] The AWS account ID of the owner of the EC2 instance.
  /// [localGatewayId] Identifier of a Outpost local gateway.
  /// [natGatewayId] Identifier of a VPC NAT gateway.
  /// [networkInterfaceId] Identifier of an EC2 network interface.
  /// [origin] How the route was created - `CreateRouteTable`, `CreateRoute` or `EnableVgwRoutePropagation`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableId] The ID of the routing table.
  /// [state] The state of the route - `active` or `blackhole`.
  /// [transitGatewayId] Identifier of an EC2 Transit Gateway.
  /// [vpcEndpointId] Identifier of a VPC Endpoint.
  /// [vpcPeeringConnectionId] Identifier of a VPC peering connection.
  RouteState({
    this.carrierGatewayId,
    this.coreNetworkArn,
    this.destinationCidrBlock,
    this.destinationIpv6CidrBlock,
    this.destinationPrefixListId,
    this.egressOnlyGatewayId,
    this.gatewayId,
    this.instanceId,
    this.instanceOwnerId,
    this.localGatewayId,
    this.natGatewayId,
    this.networkInterfaceId,
    this.origin,
    this.region,
    this.routeTableId,
    this.state,
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
      'instanceId': ?instanceId,
      'instanceOwnerId': ?instanceOwnerId,
      'localGatewayId': ?localGatewayId,
      'natGatewayId': ?natGatewayId,
      'networkInterfaceId': ?networkInterfaceId,
      'origin': ?origin,
      'region': ?region,
      'routeTableId': ?routeTableId,
      'state': ?state,
      'transitGatewayId': ?transitGatewayId,
      'vpcEndpointId': ?vpcEndpointId,
      'vpcPeeringConnectionId': ?vpcPeeringConnectionId,
    };
  }

  factory RouteState.fromMap(Map<String, dynamic> map) {
    return RouteState(
      carrierGatewayId: map['carrierGatewayId'] == null ? null : (map['carrierGatewayId'] as String).input(),
      coreNetworkArn: map['coreNetworkArn'] == null ? null : (map['coreNetworkArn'] as String).input(),
      destinationCidrBlock: map['destinationCidrBlock'] == null ? null : (map['destinationCidrBlock'] as String).input(),
      destinationIpv6CidrBlock: map['destinationIpv6CidrBlock'] == null ? null : (map['destinationIpv6CidrBlock'] as String).input(),
      destinationPrefixListId: map['destinationPrefixListId'] == null ? null : (map['destinationPrefixListId'] as String).input(),
      egressOnlyGatewayId: map['egressOnlyGatewayId'] == null ? null : (map['egressOnlyGatewayId'] as String).input(),
      gatewayId: map['gatewayId'] == null ? null : (map['gatewayId'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      instanceOwnerId: map['instanceOwnerId'] == null ? null : (map['instanceOwnerId'] as String).input(),
      localGatewayId: map['localGatewayId'] == null ? null : (map['localGatewayId'] as String).input(),
      natGatewayId: map['natGatewayId'] == null ? null : (map['natGatewayId'] as String).input(),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : (map['networkInterfaceId'] as String).input(),
      origin: map['origin'] == null ? null : (map['origin'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      routeTableId: map['routeTableId'] == null ? null : (map['routeTableId'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      transitGatewayId: map['transitGatewayId'] == null ? null : (map['transitGatewayId'] as String).input(),
      vpcEndpointId: map['vpcEndpointId'] == null ? null : (map['vpcEndpointId'] as String).input(),
      vpcPeeringConnectionId: map['vpcPeeringConnectionId'] == null ? null : (map['vpcPeeringConnectionId'] as String).input(),
    );
  }
}

