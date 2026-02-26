// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRoute.
class GetRouteArgs2 {
  /// EC2 Carrier Gateway ID of the Route belonging to the Route Table.
  final Input<String>? carrierGatewayId;

  /// Core network ARN of the Route belonging to the Route Table.
  final Input<String>? coreNetworkArn;

  /// CIDR block of the Route belonging to the Route Table.
  final Input<String>? destinationCidrBlock;

  /// IPv6 CIDR block of the Route belonging to the Route Table.
  final Input<String>? destinationIpv6CidrBlock;

  /// ID of a managed prefix list destination of the Route belonging to the Route Table.
  final Input<String>? destinationPrefixListId;

  /// Egress Only Gateway ID of the Route belonging to the Route Table.
  final Input<String>? egressOnlyGatewayId;

  /// Gateway ID of the Route belonging to the Route Table.
  final Input<String>? gatewayId;

  /// Instance ID of the Route belonging to the Route Table.
  final Input<String>? instanceId;

  /// Local Gateway ID of the Route belonging to the Route Table.
  final Input<String>? localGatewayId;

  /// NAT Gateway ID of the Route belonging to the Route Table.
  final Input<String>? natGatewayId;

  /// Network Interface ID of the Route belonging to the Route Table.
  final Input<String>? networkInterfaceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the specific Route Table containing the Route entry.
  final Input<String> routeTableId;

  /// EC2 Transit Gateway ID of the Route belonging to the Route Table.
  final Input<String>? transitGatewayId;

  /// VPC Peering Connection ID of the Route belonging to the Route Table.
  ///
  /// The arguments of this data source act as filters for querying the available Route in the current region. The given filters must match exactly oneRoute whose data will be exported as attributes.
  final Input<String>? vpcPeeringConnectionId;

  GetRouteArgs2({
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

  factory GetRouteArgs2.fromMap(Map<String, dynamic> map) {
    return GetRouteArgs2(
      carrierGatewayId: Input.asOptionalInput<String>(map['carrierGatewayId']),
      coreNetworkArn: Input.asOptionalInput<String>(map['coreNetworkArn']),
      destinationCidrBlock:
          Input.asOptionalInput<String>(map['destinationCidrBlock']),
      destinationIpv6CidrBlock:
          Input.asOptionalInput<String>(map['destinationIpv6CidrBlock']),
      destinationPrefixListId:
          Input.asOptionalInput<String>(map['destinationPrefixListId']),
      egressOnlyGatewayId:
          Input.asOptionalInput<String>(map['egressOnlyGatewayId']),
      gatewayId: Input.asOptionalInput<String>(map['gatewayId']),
      instanceId: Input.asOptionalInput<String>(map['instanceId']),
      localGatewayId: Input.asOptionalInput<String>(map['localGatewayId']),
      natGatewayId: Input.asOptionalInput<String>(map['natGatewayId']),
      networkInterfaceId:
          Input.asOptionalInput<String>(map['networkInterfaceId']),
      region: Input.asOptionalInput<String>(map['region']),
      routeTableId: Input.asInput<String>(map['routeTableId']),
      transitGatewayId: Input.asOptionalInput<String>(map['transitGatewayId']),
      vpcPeeringConnectionId:
          Input.asOptionalInput<String>(map['vpcPeeringConnectionId']),
    );
  }
}
