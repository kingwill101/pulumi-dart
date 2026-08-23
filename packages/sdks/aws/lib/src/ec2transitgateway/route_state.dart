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
  const RouteState({
    this.blackhole,
    this.destinationCidrBlock,
    this.region,
    this.transitGatewayAttachmentId,
    this.transitGatewayRouteTableId,
  });

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
      blackhole: (() { final guardedValue = map['blackhole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      destinationCidrBlock: (() { final guardedValue = map['destinationCidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitGatewayAttachmentId: (() { final guardedValue = map['transitGatewayAttachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitGatewayRouteTableId: (() { final guardedValue = map['transitGatewayRouteTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
