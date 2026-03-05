// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2clientvpn_route_route_args_doc}
/// The set of arguments for Route.
/// {@endtemplate}
/// {@macro pulumi_ec2clientvpn_route_route_args_doc}
class RouteArgs {
  /// The ID of the Client VPN endpoint.
  final pulumi.Input<String> clientVpnEndpointId;
  /// A brief description of the route.
  final pulumi.Input<String>? description;
  /// The IPv4 or IPv6 address range, in CIDR notation, of the route destination.
  final pulumi.Input<String> destinationCidrBlock;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the Subnet to route the traffic through. It must already be attached to the Client VPN.
  final pulumi.Input<String> targetVpcSubnetId;

  /// Creates a new [RouteArgs].
  /// [clientVpnEndpointId] The ID of the Client VPN endpoint.
  /// [description] A brief description of the route.
  /// [destinationCidrBlock] The IPv4 or IPv6 address range, in CIDR notation, of the route destination.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetVpcSubnetId] The ID of the Subnet to route the traffic through. It must already be attached to the Client VPN.
  RouteArgs({
    required this.clientVpnEndpointId,
    this.description,
    required this.destinationCidrBlock,
    this.region,
    required this.targetVpcSubnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientVpnEndpointId': clientVpnEndpointId,
      'description': ?description,
      'destinationCidrBlock': destinationCidrBlock,
      'region': ?region,
      'targetVpcSubnetId': targetVpcSubnetId,
    };
  }

  factory RouteArgs.fromMap(Map<String, dynamic> map) {
    return RouteArgs(
      clientVpnEndpointId: pulumi.Input.fromValue(map['clientVpnEndpointId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationCidrBlock: pulumi.Input.fromValue(map['destinationCidrBlock'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetVpcSubnetId: pulumi.Input.fromValue(map['targetVpcSubnetId'] as String),
    );
  }
}

