// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_route_route_args_doc}
/// The set of arguments for Route.
/// {@endtemplate}
/// {@macro pulumi_ec2_route_route_args_doc}
class RouteArgs {
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

  /// Identifier of a Outpost local gateway.
  final pulumi.Input<String>? localGatewayId;

  /// Identifier of a VPC NAT gateway.
  final pulumi.Input<String>? natGatewayId;

  /// Identifier of an EC2 network interface.
  final pulumi.Input<String>? networkInterfaceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the routing table.
  ///
  /// One of the following destination arguments must be supplied:
  final pulumi.Input<String> routeTableId;

  /// Identifier of an EC2 Transit Gateway.
  final pulumi.Input<String>? transitGatewayId;

  /// Identifier of a VPC Endpoint.
  final pulumi.Input<String>? vpcEndpointId;

  /// Identifier of a VPC peering connection.
  ///
  /// Note that the default route, mapping the VPC's CIDR block to "local", is created implicitly and cannot be specified.
  final pulumi.Input<String>? vpcPeeringConnectionId;

  /// Creates a new [RouteArgs].
  /// [carrierGatewayId] Identifier of a carrier gateway. This attribute can only be used when the VPC contains a subnet which is associated with a Wavelength Zone.
  /// [coreNetworkArn] The Amazon Resource Name (ARN) of a core network.
  /// [destinationCidrBlock] The destination CIDR block.
  /// [destinationIpv6CidrBlock] The destination IPv6 CIDR block.
  /// [destinationPrefixListId] The ID of a managed prefix list destination.
  /// [egressOnlyGatewayId] Identifier of a VPC Egress Only Internet Gateway.
  /// [gatewayId] Identifier of a VPC internet gateway or a virtual private gateway. Specify `local` when updating a previously imported local route.
  /// [localGatewayId] Identifier of a Outpost local gateway.
  /// [natGatewayId] Identifier of a VPC NAT gateway.
  /// [networkInterfaceId] Identifier of an EC2 network interface.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableId] The ID of the routing table.
  /// [transitGatewayId] Identifier of an EC2 Transit Gateway.
  /// [vpcEndpointId] Identifier of a VPC Endpoint.
  /// [vpcPeeringConnectionId] Identifier of a VPC peering connection.
  RouteArgs({
    String? carrierGatewayId,
    String? coreNetworkArn,
    String? destinationCidrBlock,
    String? destinationIpv6CidrBlock,
    String? destinationPrefixListId,
    String? egressOnlyGatewayId,
    String? gatewayId,
    String? localGatewayId,
    String? natGatewayId,
    String? networkInterfaceId,
    String? region,
    required String routeTableId,
    String? transitGatewayId,
    String? vpcEndpointId,
    String? vpcPeeringConnectionId,
  }) : carrierGatewayId = pulumi.Input.asOptionalInput<String>(
         carrierGatewayId,
       ),
       coreNetworkArn = pulumi.Input.asOptionalInput<String>(coreNetworkArn),
       destinationCidrBlock = pulumi.Input.asOptionalInput<String>(
         destinationCidrBlock,
       ),
       destinationIpv6CidrBlock = pulumi.Input.asOptionalInput<String>(
         destinationIpv6CidrBlock,
       ),
       destinationPrefixListId = pulumi.Input.asOptionalInput<String>(
         destinationPrefixListId,
       ),
       egressOnlyGatewayId = pulumi.Input.asOptionalInput<String>(
         egressOnlyGatewayId,
       ),
       gatewayId = pulumi.Input.asOptionalInput<String>(gatewayId),
       localGatewayId = pulumi.Input.asOptionalInput<String>(localGatewayId),
       natGatewayId = pulumi.Input.asOptionalInput<String>(natGatewayId),
       networkInterfaceId = pulumi.Input.asOptionalInput<String>(
         networkInterfaceId,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       routeTableId = pulumi.Input.asInput<String>(routeTableId),
       transitGatewayId = pulumi.Input.asOptionalInput<String>(
         transitGatewayId,
       ),
       vpcEndpointId = pulumi.Input.asOptionalInput<String>(vpcEndpointId),
       vpcPeeringConnectionId = pulumi.Input.asOptionalInput<String>(
         vpcPeeringConnectionId,
       );

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
      'region': ?region,
      'routeTableId': routeTableId,
      'transitGatewayId': ?transitGatewayId,
      'vpcEndpointId': ?vpcEndpointId,
      'vpcPeeringConnectionId': ?vpcPeeringConnectionId,
    };
  }

  factory RouteArgs.fromMap(Map<String, dynamic> map) {
    return RouteArgs(
      carrierGatewayId: map['carrierGatewayId'] == null
          ? null
          : map['carrierGatewayId'] as String,
      coreNetworkArn: map['coreNetworkArn'] == null
          ? null
          : map['coreNetworkArn'] as String,
      destinationCidrBlock: map['destinationCidrBlock'] == null
          ? null
          : map['destinationCidrBlock'] as String,
      destinationIpv6CidrBlock: map['destinationIpv6CidrBlock'] == null
          ? null
          : map['destinationIpv6CidrBlock'] as String,
      destinationPrefixListId: map['destinationPrefixListId'] == null
          ? null
          : map['destinationPrefixListId'] as String,
      egressOnlyGatewayId: map['egressOnlyGatewayId'] == null
          ? null
          : map['egressOnlyGatewayId'] as String,
      gatewayId: map['gatewayId'] == null ? null : map['gatewayId'] as String,
      localGatewayId: map['localGatewayId'] == null
          ? null
          : map['localGatewayId'] as String,
      natGatewayId: map['natGatewayId'] == null
          ? null
          : map['natGatewayId'] as String,
      networkInterfaceId: map['networkInterfaceId'] == null
          ? null
          : map['networkInterfaceId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      routeTableId: map['routeTableId'] as String,
      transitGatewayId: map['transitGatewayId'] == null
          ? null
          : map['transitGatewayId'] as String,
      vpcEndpointId: map['vpcEndpointId'] == null
          ? null
          : map['vpcEndpointId'] as String,
      vpcPeeringConnectionId: map['vpcPeeringConnectionId'] == null
          ? null
          : map['vpcPeeringConnectionId'] as String,
    );
  }
}
