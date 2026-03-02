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
    this.carrierGatewayId,
    this.coreNetworkArn,
    this.destinationCidrBlock,
    this.destinationIpv6CidrBlock,
    this.destinationPrefixListId,
    this.egressOnlyGatewayId,
    this.gatewayId,
    this.instanceId,
    this.localGatewayId,
    this.natGatewayId,
    this.networkInterfaceId,
    this.region,
    required this.routeTableId,
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
      carrierGatewayId: map['carrierGatewayId'] == null ? null : (map['carrierGatewayId'] as String).input(),
      coreNetworkArn: map['coreNetworkArn'] == null ? null : (map['coreNetworkArn'] as String).input(),
      destinationCidrBlock: map['destinationCidrBlock'] == null ? null : (map['destinationCidrBlock'] as String).input(),
      destinationIpv6CidrBlock: map['destinationIpv6CidrBlock'] == null ? null : (map['destinationIpv6CidrBlock'] as String).input(),
      destinationPrefixListId: map['destinationPrefixListId'] == null ? null : (map['destinationPrefixListId'] as String).input(),
      egressOnlyGatewayId: map['egressOnlyGatewayId'] == null ? null : (map['egressOnlyGatewayId'] as String).input(),
      gatewayId: map['gatewayId'] == null ? null : (map['gatewayId'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      localGatewayId: map['localGatewayId'] == null ? null : (map['localGatewayId'] as String).input(),
      natGatewayId: map['natGatewayId'] == null ? null : (map['natGatewayId'] as String).input(),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : (map['networkInterfaceId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      routeTableId: (map['routeTableId'] as String).input(),
      transitGatewayId: map['transitGatewayId'] == null ? null : (map['transitGatewayId'] as String).input(),
      vpcPeeringConnectionId: map['vpcPeeringConnectionId'] == null ? null : (map['vpcPeeringConnectionId'] as String).input(),
    );
  }
}

