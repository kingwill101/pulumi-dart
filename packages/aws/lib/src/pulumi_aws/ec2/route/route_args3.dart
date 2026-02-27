// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Route.
class RouteArgs3 {
  /// Identifier of a carrier gateway. This attribute can only be used when the VPC contains a subnet which is associated with a Wavelength Zone.
  final Input<String>? carrierGatewayId;

  /// The Amazon Resource Name (ARN) of a core network.
  final Input<String>? coreNetworkArn;

  /// The destination CIDR block.
  final Input<String>? destinationCidrBlock;

  /// The destination IPv6 CIDR block.
  final Input<String>? destinationIpv6CidrBlock;

  /// The ID of a managed prefix list destination.
  ///
  /// One of the following target arguments must be supplied:
  final Input<String>? destinationPrefixListId;

  /// Identifier of a VPC Egress Only Internet Gateway.
  final Input<String>? egressOnlyGatewayId;

  /// Identifier of a VPC internet gateway or a virtual private gateway. Specify `local` when updating a previously imported local route.
  final Input<String>? gatewayId;

  /// Identifier of a Outpost local gateway.
  final Input<String>? localGatewayId;

  /// Identifier of a VPC NAT gateway.
  final Input<String>? natGatewayId;

  /// Identifier of an EC2 network interface.
  final Input<String>? networkInterfaceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the routing table.
  ///
  /// One of the following destination arguments must be supplied:
  final Input<String> routeTableId;

  /// Identifier of an EC2 Transit Gateway.
  final Input<String>? transitGatewayId;

  /// Identifier of a VPC Endpoint.
  final Input<String>? vpcEndpointId;

  /// Identifier of a VPC peering connection.
  ///
  /// Note that the default route, mapping the VPC's CIDR block to "local", is created implicitly and cannot be specified.
  final Input<String>? vpcPeeringConnectionId;

  RouteArgs3({
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
    this.region,
    required this.routeTableId,
    this.transitGatewayId,
    this.vpcEndpointId,
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
    final vpcEndpointIdValue = vpcEndpointId;
    if (vpcEndpointIdValue != null) {
      map['vpcEndpointId'] = vpcEndpointIdValue;
    }
    final vpcPeeringConnectionIdValue = vpcPeeringConnectionId;
    if (vpcPeeringConnectionIdValue != null) {
      map['vpcPeeringConnectionId'] = vpcPeeringConnectionIdValue;
    }
    return map;
  }

  factory RouteArgs3.fromMap(Map<String, dynamic> map) {
    return RouteArgs3(
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
      localGatewayId: Input.asOptionalInput<String>(map['localGatewayId']),
      natGatewayId: Input.asOptionalInput<String>(map['natGatewayId']),
      networkInterfaceId:
          Input.asOptionalInput<String>(map['networkInterfaceId']),
      region: Input.asOptionalInput<String>(map['region']),
      routeTableId: Input.asInput<String>(map['routeTableId']),
      transitGatewayId: Input.asOptionalInput<String>(map['transitGatewayId']),
      vpcEndpointId: Input.asOptionalInput<String>(map['vpcEndpointId']),
      vpcPeeringConnectionId:
          Input.asOptionalInput<String>(map['vpcPeeringConnectionId']),
    );
  }
}
