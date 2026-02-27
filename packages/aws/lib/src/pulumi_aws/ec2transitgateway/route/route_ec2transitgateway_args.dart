// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Route.
class RouteEc2transitgatewayArgs {
  /// Indicates whether to drop traffic that matches this route (default to `false`).
  final pulumi.Input<bool>? blackhole;

  /// IPv4 or IPv6 RFC1924 CIDR used for destination matches. Routing decisions are based on the most specific match.
  final pulumi.Input<String> destinationCidrBlock;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Identifier of EC2 Transit Gateway Attachment (required if `blackhole` is set to false).
  final pulumi.Input<String>? transitGatewayAttachmentId;

  /// Identifier of EC2 Transit Gateway Route Table.
  final pulumi.Input<String> transitGatewayRouteTableId;

  RouteEc2transitgatewayArgs({
    this.blackhole,
    required this.destinationCidrBlock,
    this.region,
    this.transitGatewayAttachmentId,
    required this.transitGatewayRouteTableId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blackholeValue = blackhole;
    if (blackholeValue != null) {
      map['blackhole'] = blackholeValue;
    }
    map['destinationCidrBlock'] = destinationCidrBlock;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final transitGatewayAttachmentIdValue = transitGatewayAttachmentId;
    if (transitGatewayAttachmentIdValue != null) {
      map['transitGatewayAttachmentId'] = transitGatewayAttachmentIdValue;
    }
    map['transitGatewayRouteTableId'] = transitGatewayRouteTableId;
    return map;
  }

  factory RouteEc2transitgatewayArgs.fromMap(Map<String, dynamic> map) {
    return RouteEc2transitgatewayArgs(
      blackhole: pulumi.Input.asOptionalInput<bool>(map['blackhole']),
      destinationCidrBlock:
          pulumi.Input.asInput<String>(map['destinationCidrBlock']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      transitGatewayAttachmentId: pulumi.Input.asOptionalInput<String>(
          map['transitGatewayAttachmentId']),
      transitGatewayRouteTableId:
          pulumi.Input.asInput<String>(map['transitGatewayRouteTableId']),
    );
  }
}
