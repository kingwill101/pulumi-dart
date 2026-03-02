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
    this.region,
    this.routeTableId,
    this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'routeTableId': ?routeTableId,
      'vpnGatewayId': ?vpnGatewayId,
    };
  }

  factory VpnGatewayRoutePropagationState.fromMap(Map<String, dynamic> map) {
    return VpnGatewayRoutePropagationState(
      region: map['region'] == null ? null : (map['region'] as String).input(),
      routeTableId: map['routeTableId'] == null ? null : (map['routeTableId'] as String).input(),
      vpnGatewayId: map['vpnGatewayId'] == null ? null : (map['vpnGatewayId'] as String).input(),
    );
  }
}

