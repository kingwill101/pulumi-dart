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
    String? carrierGatewayId,
    String? coreNetworkArn,
    String? destinationCidrBlock,
    String? destinationIpv6CidrBlock,
    String? destinationPrefixListId,
    String? egressOnlyGatewayId,
    String? gatewayId,
    String? instanceId,
    String? localGatewayId,
    String? natGatewayId,
    String? networkInterfaceId,
    String? region,
    required String routeTableId,
    String? transitGatewayId,
    String? vpcPeeringConnectionId,
  })  : carrierGatewayId =
            pulumi.Input.asOptionalInput<String>(carrierGatewayId),
        coreNetworkArn = pulumi.Input.asOptionalInput<String>(coreNetworkArn),
        destinationCidrBlock =
            pulumi.Input.asOptionalInput<String>(destinationCidrBlock),
        destinationIpv6CidrBlock =
            pulumi.Input.asOptionalInput<String>(destinationIpv6CidrBlock),
        destinationPrefixListId =
            pulumi.Input.asOptionalInput<String>(destinationPrefixListId),
        egressOnlyGatewayId =
            pulumi.Input.asOptionalInput<String>(egressOnlyGatewayId),
        gatewayId = pulumi.Input.asOptionalInput<String>(gatewayId),
        instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
        localGatewayId = pulumi.Input.asOptionalInput<String>(localGatewayId),
        natGatewayId = pulumi.Input.asOptionalInput<String>(natGatewayId),
        networkInterfaceId =
            pulumi.Input.asOptionalInput<String>(networkInterfaceId),
        region = pulumi.Input.asOptionalInput<String>(region),
        routeTableId = pulumi.Input.asInput<String>(routeTableId),
        transitGatewayId =
            pulumi.Input.asOptionalInput<String>(transitGatewayId),
        vpcPeeringConnectionId =
            pulumi.Input.asOptionalInput<String>(vpcPeeringConnectionId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final carrierGatewayIdValue = carrierGatewayId;
    if (carrierGatewayIdValue != null) {
      map['carrierGatewayId'] = carrierGatewayIdValue;
    }
    final coreNetworkArnValue = coreNetworkArn;
    if (coreNetworkArnValue != null) {
      map['coreNetworkArn'] = coreNetworkArnValue;
    }
    final destinationCidrBlockValue = destinationCidrBlock;
    if (destinationCidrBlockValue != null) {
      map['destinationCidrBlock'] = destinationCidrBlockValue;
    }
    final destinationIpv6CidrBlockValue = destinationIpv6CidrBlock;
    if (destinationIpv6CidrBlockValue != null) {
      map['destinationIpv6CidrBlock'] = destinationIpv6CidrBlockValue;
    }
    final destinationPrefixListIdValue = destinationPrefixListId;
    if (destinationPrefixListIdValue != null) {
      map['destinationPrefixListId'] = destinationPrefixListIdValue;
    }
    final egressOnlyGatewayIdValue = egressOnlyGatewayId;
    if (egressOnlyGatewayIdValue != null) {
      map['egressOnlyGatewayId'] = egressOnlyGatewayIdValue;
    }
    final gatewayIdValue = gatewayId;
    if (gatewayIdValue != null) {
      map['gatewayId'] = gatewayIdValue;
    }
    final instanceIdValue = instanceId;
    if (instanceIdValue != null) {
      map['instanceId'] = instanceIdValue;
    }
    final localGatewayIdValue = localGatewayId;
    if (localGatewayIdValue != null) {
      map['localGatewayId'] = localGatewayIdValue;
    }
    final natGatewayIdValue = natGatewayId;
    if (natGatewayIdValue != null) {
      map['natGatewayId'] = natGatewayIdValue;
    }
    final networkInterfaceIdValue = networkInterfaceId;
    if (networkInterfaceIdValue != null) {
      map['networkInterfaceId'] = networkInterfaceIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['routeTableId'] = routeTableId;
    final transitGatewayIdValue = transitGatewayId;
    if (transitGatewayIdValue != null) {
      map['transitGatewayId'] = transitGatewayIdValue;
    }
    final vpcPeeringConnectionIdValue = vpcPeeringConnectionId;
    if (vpcPeeringConnectionIdValue != null) {
      map['vpcPeeringConnectionId'] = vpcPeeringConnectionIdValue;
    }
    return map;
  }

  factory GetRouteArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteArgs(
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
      instanceId:
          map['instanceId'] == null ? null : map['instanceId'] as String,
      localGatewayId: map['localGatewayId'] == null
          ? null
          : map['localGatewayId'] as String,
      natGatewayId:
          map['natGatewayId'] == null ? null : map['natGatewayId'] as String,
      networkInterfaceId: map['networkInterfaceId'] == null
          ? null
          : map['networkInterfaceId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      routeTableId: map['routeTableId'] as String,
      transitGatewayId: map['transitGatewayId'] == null
          ? null
          : map['transitGatewayId'] as String,
      vpcPeeringConnectionId: map['vpcPeeringConnectionId'] == null
          ? null
          : map['vpcPeeringConnectionId'] as String,
    );
  }
}
