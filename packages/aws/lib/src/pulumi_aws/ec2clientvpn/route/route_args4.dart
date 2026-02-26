// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Route.
class RouteArgs4 {
  /// The ID of the Client VPN endpoint.
  final Input<String> clientVpnEndpointId;

  /// A brief description of the route.
  final Input<String>? description;

  /// The IPv4 or IPv6 address range, in CIDR notation, of the route destination.
  final Input<String> destinationCidrBlock;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the Subnet to route the traffic through. It must already be attached to the Client VPN.
  final Input<String> targetVpcSubnetId;

  RouteArgs4({
    required this.clientVpnEndpointId,
    this.description,
    required this.destinationCidrBlock,
    this.region,
    required this.targetVpcSubnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientVpnEndpointId'] = clientVpnEndpointId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['destinationCidrBlock'] = destinationCidrBlock;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['targetVpcSubnetId'] = targetVpcSubnetId;
    return map;
  }

  factory RouteArgs4.fromMap(Map<String, dynamic> map) {
    return RouteArgs4(
      clientVpnEndpointId: Input.asInput<String>(map['clientVpnEndpointId']),
      description: Input.asOptionalInput<String>(map['description']),
      destinationCidrBlock: Input.asInput<String>(map['destinationCidrBlock']),
      region: Input.asOptionalInput<String>(map['region']),
      targetVpcSubnetId: Input.asInput<String>(map['targetVpcSubnetId']),
    );
  }
}
