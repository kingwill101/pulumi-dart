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
    pulumi.Output<String>? carrierGatewayId,
    pulumi.Output<String>? coreNetworkArn,
    pulumi.Output<String>? destinationCidrBlock,
    pulumi.Output<String>? destinationIpv6CidrBlock,
    pulumi.Output<String>? destinationPrefixListId,
    pulumi.Output<String>? egressOnlyGatewayId,
    pulumi.Output<String>? gatewayId,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? instanceOwnerId,
    pulumi.Output<String>? localGatewayId,
    pulumi.Output<String>? natGatewayId,
    pulumi.Output<String>? networkInterfaceId,
    pulumi.Output<String>? origin,
    pulumi.Output<String>? region,
    pulumi.Output<String>? routeTableId,
    pulumi.Output<String>? state,
    pulumi.Output<String>? transitGatewayId,
    pulumi.Output<String>? vpcEndpointId,
    pulumi.Output<String>? vpcPeeringConnectionId,
  }) :
      carrierGatewayId = pulumi.Input.asOptionalInput<String>(carrierGatewayId),
      coreNetworkArn = pulumi.Input.asOptionalInput<String>(coreNetworkArn),
      destinationCidrBlock = pulumi.Input.asOptionalInput<String>(destinationCidrBlock),
      destinationIpv6CidrBlock = pulumi.Input.asOptionalInput<String>(destinationIpv6CidrBlock),
      destinationPrefixListId = pulumi.Input.asOptionalInput<String>(destinationPrefixListId),
      egressOnlyGatewayId = pulumi.Input.asOptionalInput<String>(egressOnlyGatewayId),
      gatewayId = pulumi.Input.asOptionalInput<String>(gatewayId),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      instanceOwnerId = pulumi.Input.asOptionalInput<String>(instanceOwnerId),
      localGatewayId = pulumi.Input.asOptionalInput<String>(localGatewayId),
      natGatewayId = pulumi.Input.asOptionalInput<String>(natGatewayId),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId),
      origin = pulumi.Input.asOptionalInput<String>(origin),
      region = pulumi.Input.asOptionalInput<String>(region),
      routeTableId = pulumi.Input.asOptionalInput<String>(routeTableId),
      state = pulumi.Input.asOptionalInput<String>(state),
      transitGatewayId = pulumi.Input.asOptionalInput<String>(transitGatewayId),
      vpcEndpointId = pulumi.Input.asOptionalInput<String>(vpcEndpointId),
      vpcPeeringConnectionId = pulumi.Input.asOptionalInput<String>(vpcPeeringConnectionId);

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
      carrierGatewayId: map['carrierGatewayId'] == null ? null : pulumi.Output.create<String>(map['carrierGatewayId'] as String),
      coreNetworkArn: map['coreNetworkArn'] == null ? null : pulumi.Output.create<String>(map['coreNetworkArn'] as String),
      destinationCidrBlock: map['destinationCidrBlock'] == null ? null : pulumi.Output.create<String>(map['destinationCidrBlock'] as String),
      destinationIpv6CidrBlock: map['destinationIpv6CidrBlock'] == null ? null : pulumi.Output.create<String>(map['destinationIpv6CidrBlock'] as String),
      destinationPrefixListId: map['destinationPrefixListId'] == null ? null : pulumi.Output.create<String>(map['destinationPrefixListId'] as String),
      egressOnlyGatewayId: map['egressOnlyGatewayId'] == null ? null : pulumi.Output.create<String>(map['egressOnlyGatewayId'] as String),
      gatewayId: map['gatewayId'] == null ? null : pulumi.Output.create<String>(map['gatewayId'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      instanceOwnerId: map['instanceOwnerId'] == null ? null : pulumi.Output.create<String>(map['instanceOwnerId'] as String),
      localGatewayId: map['localGatewayId'] == null ? null : pulumi.Output.create<String>(map['localGatewayId'] as String),
      natGatewayId: map['natGatewayId'] == null ? null : pulumi.Output.create<String>(map['natGatewayId'] as String),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      origin: map['origin'] == null ? null : pulumi.Output.create<String>(map['origin'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routeTableId: map['routeTableId'] == null ? null : pulumi.Output.create<String>(map['routeTableId'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      transitGatewayId: map['transitGatewayId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayId'] as String),
      vpcEndpointId: map['vpcEndpointId'] == null ? null : pulumi.Output.create<String>(map['vpcEndpointId'] as String),
      vpcPeeringConnectionId: map['vpcPeeringConnectionId'] == null ? null : pulumi.Output.create<String>(map['vpcPeeringConnectionId'] as String),
    );
  }
}

