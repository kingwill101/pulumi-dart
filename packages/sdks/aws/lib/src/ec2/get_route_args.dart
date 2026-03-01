// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_get_route_get_route_args_doc}
/// Arguments for getRoute.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_route_get_route_args_doc}
class GetRouteArgs {
  /// EC2 Carrier Gateway ID of the Route belonging to the Route Table.
  final pulumi.Input<String>? carrierGatewayId;
  /// Core network ARN of the Route belonging to the Route Table.
  final pulumi.Input<String>? coreNetworkArn;
  /// CIDR block of the Route belonging to the Route Table.
  final pulumi.Input<String>? destinationCidrBlock;
  /// IPv6 CIDR block of the Route belonging to the Route Table.
  final pulumi.Input<String>? destinationIpv6CidrBlock;
  /// ID of a managed prefix list destination of the Route belonging to the Route Table.
  final pulumi.Input<String>? destinationPrefixListId;
  /// Egress Only Gateway ID of the Route belonging to the Route Table.
  final pulumi.Input<String>? egressOnlyGatewayId;
  /// Gateway ID of the Route belonging to the Route Table.
  final pulumi.Input<String>? gatewayId;
  /// Instance ID of the Route belonging to the Route Table.
  final pulumi.Input<String>? instanceId;
  /// Local Gateway ID of the Route belonging to the Route Table.
  final pulumi.Input<String>? localGatewayId;
  /// NAT Gateway ID of the Route belonging to the Route Table.
  final pulumi.Input<String>? natGatewayId;
  /// Network Interface ID of the Route belonging to the Route Table.
  final pulumi.Input<String>? networkInterfaceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ID of the specific Route Table containing the Route entry.
  final pulumi.Input<String> routeTableId;
  /// EC2 Transit Gateway ID of the Route belonging to the Route Table.
  final pulumi.Input<String>? transitGatewayId;
  /// VPC Peering Connection ID of the Route belonging to the Route Table.
  ///
  /// The arguments of this data source act as filters for querying the available Route in the current region. The given filters must match exactly oneRoute whose data will be exported as attributes.
  final pulumi.Input<String>? vpcPeeringConnectionId;

  /// Creates a new [GetRouteArgs].
  /// [carrierGatewayId] EC2 Carrier Gateway ID of the Route belonging to the Route Table.
  /// [coreNetworkArn] Core network ARN of the Route belonging to the Route Table.
  /// [destinationCidrBlock] CIDR block of the Route belonging to the Route Table.
  /// [destinationIpv6CidrBlock] IPv6 CIDR block of the Route belonging to the Route Table.
  /// [destinationPrefixListId] ID of a managed prefix list destination of the Route belonging to the Route Table.
  /// [egressOnlyGatewayId] Egress Only Gateway ID of the Route belonging to the Route Table.
  /// [gatewayId] Gateway ID of the Route belonging to the Route Table.
  /// [instanceId] Instance ID of the Route belonging to the Route Table.
  /// [localGatewayId] Local Gateway ID of the Route belonging to the Route Table.
  /// [natGatewayId] NAT Gateway ID of the Route belonging to the Route Table.
  /// [networkInterfaceId] Network Interface ID of the Route belonging to the Route Table.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableId] ID of the specific Route Table containing the Route entry.
  /// [transitGatewayId] EC2 Transit Gateway ID of the Route belonging to the Route Table.
  /// [vpcPeeringConnectionId] VPC Peering Connection ID of the Route belonging to the Route Table.
  GetRouteArgs({
    pulumi.Output<String>? carrierGatewayId,
    pulumi.Output<String>? coreNetworkArn,
    pulumi.Output<String>? destinationCidrBlock,
    pulumi.Output<String>? destinationIpv6CidrBlock,
    pulumi.Output<String>? destinationPrefixListId,
    pulumi.Output<String>? egressOnlyGatewayId,
    pulumi.Output<String>? gatewayId,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? localGatewayId,
    pulumi.Output<String>? natGatewayId,
    pulumi.Output<String>? networkInterfaceId,
    pulumi.Output<String>? region,
    required pulumi.Output<String> routeTableId,
    pulumi.Output<String>? transitGatewayId,
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
      localGatewayId = pulumi.Input.asOptionalInput<String>(localGatewayId),
      natGatewayId = pulumi.Input.asOptionalInput<String>(natGatewayId),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId),
      region = pulumi.Input.asOptionalInput<String>(region),
      routeTableId = pulumi.Input.asInput<String>(routeTableId),
      transitGatewayId = pulumi.Input.asOptionalInput<String>(transitGatewayId),
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
      'localGatewayId': ?localGatewayId,
      'natGatewayId': ?natGatewayId,
      'networkInterfaceId': ?networkInterfaceId,
      'region': ?region,
      'routeTableId': routeTableId,
      'transitGatewayId': ?transitGatewayId,
      'vpcPeeringConnectionId': ?vpcPeeringConnectionId,
    };
  }

  factory GetRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteArgs(
      carrierGatewayId: map['carrierGatewayId'] == null ? null : pulumi.Output.create<String>(map['carrierGatewayId'] as String),
      coreNetworkArn: map['coreNetworkArn'] == null ? null : pulumi.Output.create<String>(map['coreNetworkArn'] as String),
      destinationCidrBlock: map['destinationCidrBlock'] == null ? null : pulumi.Output.create<String>(map['destinationCidrBlock'] as String),
      destinationIpv6CidrBlock: map['destinationIpv6CidrBlock'] == null ? null : pulumi.Output.create<String>(map['destinationIpv6CidrBlock'] as String),
      destinationPrefixListId: map['destinationPrefixListId'] == null ? null : pulumi.Output.create<String>(map['destinationPrefixListId'] as String),
      egressOnlyGatewayId: map['egressOnlyGatewayId'] == null ? null : pulumi.Output.create<String>(map['egressOnlyGatewayId'] as String),
      gatewayId: map['gatewayId'] == null ? null : pulumi.Output.create<String>(map['gatewayId'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      localGatewayId: map['localGatewayId'] == null ? null : pulumi.Output.create<String>(map['localGatewayId'] as String),
      natGatewayId: map['natGatewayId'] == null ? null : pulumi.Output.create<String>(map['natGatewayId'] as String),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routeTableId: pulumi.Output.create<String>(map['routeTableId'] as String),
      transitGatewayId: map['transitGatewayId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayId'] as String),
      vpcPeeringConnectionId: map['vpcPeeringConnectionId'] == null ? null : pulumi.Output.create<String>(map['vpcPeeringConnectionId'] as String),
    );
  }
}

