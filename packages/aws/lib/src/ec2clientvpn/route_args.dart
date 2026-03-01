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
    required String clientVpnEndpointId,
    String? description,
    required String destinationCidrBlock,
    String? region,
    required String targetVpcSubnetId,
  }) : clientVpnEndpointId = pulumi.Input.asInput<String>(clientVpnEndpointId),
       description = pulumi.Input.asOptionalInput<String>(description),
       destinationCidrBlock = pulumi.Input.asInput<String>(
         destinationCidrBlock,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       targetVpcSubnetId = pulumi.Input.asInput<String>(targetVpcSubnetId);

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
      clientVpnEndpointId: map['clientVpnEndpointId'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      destinationCidrBlock: map['destinationCidrBlock'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      targetVpcSubnetId: map['targetVpcSubnetId'] as String,
    );
  }
}
