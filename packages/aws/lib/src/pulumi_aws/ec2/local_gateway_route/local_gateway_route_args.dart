// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LocalGatewayRoute.
class LocalGatewayRouteArgs {
  /// IPv4 CIDR range used for destination matches. Routing decisions are based on the most specific match.
  final pulumi.Input<String> destinationCidrBlock;

  /// Identifier of EC2 Local Gateway Route Table.
  final pulumi.Input<String> localGatewayRouteTableId;

  /// Identifier of EC2 Local Gateway Virtual Interface Group.
  final pulumi.Input<String> localGatewayVirtualInterfaceGroupId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  LocalGatewayRouteArgs({
    required this.destinationCidrBlock,
    required this.localGatewayRouteTableId,
    required this.localGatewayVirtualInterfaceGroupId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationCidrBlock'] = destinationCidrBlock;
    map['localGatewayRouteTableId'] = localGatewayRouteTableId;
    map['localGatewayVirtualInterfaceGroupId'] =
        localGatewayVirtualInterfaceGroupId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LocalGatewayRouteArgs.fromMap(Map<String, dynamic> map) {
    return LocalGatewayRouteArgs(
      destinationCidrBlock:
          pulumi.Input.asInput<String>(map['destinationCidrBlock']),
      localGatewayRouteTableId:
          pulumi.Input.asInput<String>(map['localGatewayRouteTableId']),
      localGatewayVirtualInterfaceGroupId: pulumi.Input.asInput<String>(
          map['localGatewayVirtualInterfaceGroupId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
