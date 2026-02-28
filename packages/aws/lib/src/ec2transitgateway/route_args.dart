// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2transitgateway_route_route_args_doc}
/// The set of arguments for Route.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_route_route_args_doc}
class RouteArgs {
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

  /// Creates a new [RouteArgs].
  /// [blackhole] Indicates whether to drop traffic that matches this route (default to `false`).
  /// [destinationCidrBlock] IPv4 or IPv6 RFC1924 CIDR used for destination matches. Routing decisions are based on the most specific match.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transitGatewayAttachmentId] Identifier of EC2 Transit Gateway Attachment (required if `blackhole` is set to false).
  /// [transitGatewayRouteTableId] Identifier of EC2 Transit Gateway Route Table.
  RouteArgs({
    bool? blackhole,
    required String destinationCidrBlock,
    String? region,
    String? transitGatewayAttachmentId,
    required String transitGatewayRouteTableId,
  })  : blackhole = pulumi.Input.asOptionalInput<bool>(blackhole),
        destinationCidrBlock =
            pulumi.Input.asInput<String>(destinationCidrBlock),
        region = pulumi.Input.asOptionalInput<String>(region),
        transitGatewayAttachmentId =
            pulumi.Input.asOptionalInput<String>(transitGatewayAttachmentId),
        transitGatewayRouteTableId =
            pulumi.Input.asInput<String>(transitGatewayRouteTableId);

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

  factory RouteArgs.fromMap(Map<String, dynamic> map) {
    return RouteArgs(
      blackhole: map['blackhole'] == null ? null : map['blackhole'] as bool,
      destinationCidrBlock: map['destinationCidrBlock'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null
          ? null
          : map['transitGatewayAttachmentId'] as String,
      transitGatewayRouteTableId: map['transitGatewayRouteTableId'] as String,
    );
  }
}
