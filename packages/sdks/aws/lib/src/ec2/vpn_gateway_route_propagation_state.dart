// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpnGatewayRoutePropagation resources.
class VpnGatewayRoutePropagationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The id of the `aws.ec2.RouteTable` to propagate routes into.
  final pulumi.Input<String>? routeTableId;
  /// The id of the `aws.ec2.VpnGateway` to propagate routes from.
  final pulumi.Input<String>? vpnGatewayId;

  /// Creates a new [VpnGatewayRoutePropagationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableId] The id of the `aws.ec2.RouteTable` to propagate routes into.
  /// [vpnGatewayId] The id of the `aws.ec2.VpnGateway` to propagate routes from.
  VpnGatewayRoutePropagationState({
    pulumi.Output<String>? region,
    pulumi.Output<String>? routeTableId,
    pulumi.Output<String>? vpnGatewayId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      routeTableId = pulumi.Input.asOptionalInput<String>(routeTableId),
      vpnGatewayId = pulumi.Input.asOptionalInput<String>(vpnGatewayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'routeTableId': ?routeTableId,
      'vpnGatewayId': ?vpnGatewayId,
    };
  }

  factory VpnGatewayRoutePropagationState.fromMap(Map<String, dynamic> map) {
    return VpnGatewayRoutePropagationState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routeTableId: map['routeTableId'] == null ? null : pulumi.Output.create<String>(map['routeTableId'] as String),
      vpnGatewayId: map['vpnGatewayId'] == null ? null : pulumi.Output.create<String>(map['vpnGatewayId'] as String),
    );
  }
}

