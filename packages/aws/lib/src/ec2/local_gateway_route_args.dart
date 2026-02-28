// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_local_gateway_route_local_gateway_route_args_doc}
/// The set of arguments for LocalGatewayRoute.
/// {@endtemplate}
/// {@macro pulumi_ec2_local_gateway_route_local_gateway_route_args_doc}
class LocalGatewayRouteArgs {
  /// IPv4 CIDR range used for destination matches. Routing decisions are based on the most specific match.
  final pulumi.Input<String> destinationCidrBlock;
  /// Identifier of EC2 Local Gateway Route Table.
  final pulumi.Input<String> localGatewayRouteTableId;
  /// Identifier of EC2 Local Gateway Virtual Interface Group.
  final pulumi.Input<String> localGatewayVirtualInterfaceGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LocalGatewayRouteArgs].
  /// [destinationCidrBlock] IPv4 CIDR range used for destination matches. Routing decisions are based on the most specific match.
  /// [localGatewayRouteTableId] Identifier of EC2 Local Gateway Route Table.
  /// [localGatewayVirtualInterfaceGroupId] Identifier of EC2 Local Gateway Virtual Interface Group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LocalGatewayRouteArgs({
    required String destinationCidrBlock,
    required String localGatewayRouteTableId,
    required String localGatewayVirtualInterfaceGroupId,
    String? region,
  }) :
      destinationCidrBlock = pulumi.Input.asInput<String>(destinationCidrBlock),
      localGatewayRouteTableId = pulumi.Input.asInput<String>(localGatewayRouteTableId),
      localGatewayVirtualInterfaceGroupId = pulumi.Input.asInput<String>(localGatewayVirtualInterfaceGroupId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidrBlock': destinationCidrBlock,
      'localGatewayRouteTableId': localGatewayRouteTableId,
      'localGatewayVirtualInterfaceGroupId': localGatewayVirtualInterfaceGroupId,
      'region': ?region,
    };
  }

  factory LocalGatewayRouteArgs.fromMap(Map<String, dynamic> map) {
    return LocalGatewayRouteArgs(
      destinationCidrBlock: map['destinationCidrBlock'] as String,
      localGatewayRouteTableId: map['localGatewayRouteTableId'] as String,
      localGatewayVirtualInterfaceGroupId: map['localGatewayVirtualInterfaceGroupId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

