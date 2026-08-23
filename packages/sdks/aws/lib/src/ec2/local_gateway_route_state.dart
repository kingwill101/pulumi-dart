// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LocalGatewayRoute resources.
class LocalGatewayRouteState {
  /// IPv4 CIDR range used for destination matches. Routing decisions are based on the most specific match.
  final pulumi.Input<String>? destinationCidrBlock;
  /// Identifier of EC2 Local Gateway Route Table.
  final pulumi.Input<String>? localGatewayRouteTableId;
  /// Identifier of EC2 Local Gateway Virtual Interface Group.
  final pulumi.Input<String>? localGatewayVirtualInterfaceGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LocalGatewayRouteState].
  /// [destinationCidrBlock] IPv4 CIDR range used for destination matches. Routing decisions are based on the most specific match.
  /// [localGatewayRouteTableId] Identifier of EC2 Local Gateway Route Table.
  /// [localGatewayVirtualInterfaceGroupId] Identifier of EC2 Local Gateway Virtual Interface Group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const LocalGatewayRouteState({
    this.destinationCidrBlock,
    this.localGatewayRouteTableId,
    this.localGatewayVirtualInterfaceGroupId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationCidrBlock': ?destinationCidrBlock,
      'localGatewayRouteTableId': ?localGatewayRouteTableId,
      'localGatewayVirtualInterfaceGroupId': ?localGatewayVirtualInterfaceGroupId,
      'region': ?region,
    };
  }

  factory LocalGatewayRouteState.fromMap(Map<String, dynamic> map) {
    return LocalGatewayRouteState(
      destinationCidrBlock: (() { final guardedValue = map['destinationCidrBlock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localGatewayRouteTableId: (() { final guardedValue = map['localGatewayRouteTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localGatewayVirtualInterfaceGroupId: (() { final guardedValue = map['localGatewayVirtualInterfaceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
