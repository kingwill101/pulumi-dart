// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Route resources.
class RouteState {
  /// Indicates whether to drop traffic that matches this route (default to `false`).
  final pulumi.Input<bool>? blackhole;
  /// IPv4 or IPv6 RFC1924 CIDR used for destination matches. Routing decisions are based on the most specific match.
  final pulumi.Input<String>? destinationCidrBlock;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of EC2 Transit Gateway Attachment (required if `blackhole` is set to false).
  final pulumi.Input<String>? transitGatewayAttachmentId;
  /// Identifier of EC2 Transit Gateway Route Table.
  final pulumi.Input<String>? transitGatewayRouteTableId;

  /// Creates a new [RouteState].
  /// [blackhole] Indicates whether to drop traffic that matches this route (default to `false`).
  /// [destinationCidrBlock] IPv4 or IPv6 RFC1924 CIDR used for destination matches. Routing decisions are based on the most specific match.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transitGatewayAttachmentId] Identifier of EC2 Transit Gateway Attachment (required if `blackhole` is set to false).
  /// [transitGatewayRouteTableId] Identifier of EC2 Transit Gateway Route Table.
  RouteState({
    pulumi.Output<bool>? blackhole,
    pulumi.Output<String>? destinationCidrBlock,
    pulumi.Output<String>? region,
    pulumi.Output<String>? transitGatewayAttachmentId,
    pulumi.Output<String>? transitGatewayRouteTableId,
  }) :
      blackhole = pulumi.Input.asOptionalInput<bool>(blackhole),
      destinationCidrBlock = pulumi.Input.asOptionalInput<String>(destinationCidrBlock),
      region = pulumi.Input.asOptionalInput<String>(region),
      transitGatewayAttachmentId = pulumi.Input.asOptionalInput<String>(transitGatewayAttachmentId),
      transitGatewayRouteTableId = pulumi.Input.asOptionalInput<String>(transitGatewayRouteTableId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blackhole': ?blackhole,
      'destinationCidrBlock': ?destinationCidrBlock,
      'region': ?region,
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
      'transitGatewayRouteTableId': ?transitGatewayRouteTableId,
    };
  }

  factory RouteState.fromMap(Map<String, dynamic> map) {
    return RouteState(
      blackhole: map['blackhole'] == null ? null : pulumi.Output.create<bool>(map['blackhole'] as bool),
      destinationCidrBlock: map['destinationCidrBlock'] == null ? null : pulumi.Output.create<String>(map['destinationCidrBlock'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayAttachmentId'] as String),
      transitGatewayRouteTableId: map['transitGatewayRouteTableId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayRouteTableId'] as String),
    );
  }
}

