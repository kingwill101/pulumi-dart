// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteTableRoute {
  /// ID of the Carrier Gateway.
  final pulumi.Input<String> carrierGatewayId;
  /// CIDR block of the route.
  final pulumi.Input<String> cidrBlock;
  /// ARN of the core network.
  final pulumi.Input<String> coreNetworkArn;
  /// The ID of a managed prefix list destination of the route.
  final pulumi.Input<String> destinationPrefixListId;
  /// ID of the Egress Only Internet Gateway.
  final pulumi.Input<String> egressOnlyGatewayId;
  /// ID of an Internet Gateway or Virtual Private Gateway which is connected to the Route Table (not exported if not passed as a parameter).
  final pulumi.Input<String> gatewayId;
  /// EC2 instance ID.
  final pulumi.Input<String> instanceId;
  /// IPv6 CIDR block of the route.
  final pulumi.Input<String> ipv6CidrBlock;
  /// Local Gateway ID.
  final pulumi.Input<String> localGatewayId;
  /// NAT Gateway ID.
  final pulumi.Input<String> natGatewayId;
  /// ID of the elastic network interface (eni) to use.
  final pulumi.Input<String> networkInterfaceId;
  /// ARN of the ODB network.
  final pulumi.Input<String> odbNetworkArn;
  /// EC2 Transit Gateway ID.
  final pulumi.Input<String> transitGatewayId;
  /// VPC Endpoint ID.
  final pulumi.Input<String> vpcEndpointId;
  /// VPC Peering ID.
  final pulumi.Input<String> vpcPeeringConnectionId;

  /// Creates a new [GetRouteTableRoute].
  /// [carrierGatewayId] ID of the Carrier Gateway.
  /// [cidrBlock] CIDR block of the route.
  /// [coreNetworkArn] ARN of the core network.
  /// [destinationPrefixListId] The ID of a managed prefix list destination of the route.
  /// [egressOnlyGatewayId] ID of the Egress Only Internet Gateway.
  /// [gatewayId] ID of an Internet Gateway or Virtual Private Gateway which is connected to the Route Table (not exported if not passed as a parameter).
  /// [instanceId] EC2 instance ID.
  /// [ipv6CidrBlock] IPv6 CIDR block of the route.
  /// [localGatewayId] Local Gateway ID.
  /// [natGatewayId] NAT Gateway ID.
  /// [networkInterfaceId] ID of the elastic network interface (eni) to use.
  /// [odbNetworkArn] ARN of the ODB network.
  /// [transitGatewayId] EC2 Transit Gateway ID.
  /// [vpcEndpointId] VPC Endpoint ID.
  /// [vpcPeeringConnectionId] VPC Peering ID.
  const GetRouteTableRoute({
    required this.carrierGatewayId,
    required this.cidrBlock,
    required this.coreNetworkArn,
    required this.destinationPrefixListId,
    required this.egressOnlyGatewayId,
    required this.gatewayId,
    required this.instanceId,
    required this.ipv6CidrBlock,
    required this.localGatewayId,
    required this.natGatewayId,
    required this.networkInterfaceId,
    required this.odbNetworkArn,
    required this.transitGatewayId,
    required this.vpcEndpointId,
    required this.vpcPeeringConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'carrierGatewayId': carrierGatewayId,
      'cidrBlock': cidrBlock,
      'coreNetworkArn': coreNetworkArn,
      'destinationPrefixListId': destinationPrefixListId,
      'egressOnlyGatewayId': egressOnlyGatewayId,
      'gatewayId': gatewayId,
      'instanceId': instanceId,
      'ipv6CidrBlock': ipv6CidrBlock,
      'localGatewayId': localGatewayId,
      'natGatewayId': natGatewayId,
      'networkInterfaceId': networkInterfaceId,
      'odbNetworkArn': odbNetworkArn,
      'transitGatewayId': transitGatewayId,
      'vpcEndpointId': vpcEndpointId,
      'vpcPeeringConnectionId': vpcPeeringConnectionId,
    };
  }

  factory GetRouteTableRoute.fromMap(Map<String, dynamic> map) {
    return GetRouteTableRoute(
      carrierGatewayId: pulumi.Input.fromValue(map['carrierGatewayId'] as String),
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      coreNetworkArn: pulumi.Input.fromValue(map['coreNetworkArn'] as String),
      destinationPrefixListId: pulumi.Input.fromValue(map['destinationPrefixListId'] as String),
      egressOnlyGatewayId: pulumi.Input.fromValue(map['egressOnlyGatewayId'] as String),
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      ipv6CidrBlock: pulumi.Input.fromValue(map['ipv6CidrBlock'] as String),
      localGatewayId: pulumi.Input.fromValue(map['localGatewayId'] as String),
      natGatewayId: pulumi.Input.fromValue(map['natGatewayId'] as String),
      networkInterfaceId: pulumi.Input.fromValue(map['networkInterfaceId'] as String),
      odbNetworkArn: pulumi.Input.fromValue(map['odbNetworkArn'] as String),
      transitGatewayId: pulumi.Input.fromValue(map['transitGatewayId'] as String),
      vpcEndpointId: pulumi.Input.fromValue(map['vpcEndpointId'] as String),
      vpcPeeringConnectionId: pulumi.Input.fromValue(map['vpcPeeringConnectionId'] as String),
    );
  }
}
