// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Route.
class RouteEc2clientvpnArgs {
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

  RouteEc2clientvpnArgs({
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

  factory RouteEc2clientvpnArgs.fromMap(Map<String, dynamic> map) {
    return RouteEc2clientvpnArgs(
      clientVpnEndpointId:
          pulumi.Input.asInput<String>(map['clientVpnEndpointId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      destinationCidrBlock:
          pulumi.Input.asInput<String>(map['destinationCidrBlock']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      targetVpcSubnetId: pulumi.Input.asInput<String>(map['targetVpcSubnetId']),
    );
  }
}
