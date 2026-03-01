// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Route resources.
class RouteState {
  /// The ID of the Client VPN endpoint.
  final pulumi.Input<String>? clientVpnEndpointId;
  /// A brief description of the route.
  final pulumi.Input<String>? description;
  /// The IPv4 or IPv6 address range, in CIDR notation, of the route destination.
  final pulumi.Input<String>? destinationCidrBlock;
  /// Indicates how the Client VPN route was added. Will be `add-route` for routes created by this resource.
  final pulumi.Input<String>? origin;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the Subnet to route the traffic through. It must already be attached to the Client VPN.
  final pulumi.Input<String>? targetVpcSubnetId;
  /// The type of the route.
  final pulumi.Input<String>? type;

  /// Creates a new [RouteState].
  /// [clientVpnEndpointId] The ID of the Client VPN endpoint.
  /// [description] A brief description of the route.
  /// [destinationCidrBlock] The IPv4 or IPv6 address range, in CIDR notation, of the route destination.
  /// [origin] Indicates how the Client VPN route was added. Will be `add-route` for routes created by this resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [targetVpcSubnetId] The ID of the Subnet to route the traffic through. It must already be attached to the Client VPN.
  /// [type] The type of the route.
  RouteState({
    pulumi.Output<String>? clientVpnEndpointId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? destinationCidrBlock,
    pulumi.Output<String>? origin,
    pulumi.Output<String>? region,
    pulumi.Output<String>? targetVpcSubnetId,
    pulumi.Output<String>? type,
  }) :
      clientVpnEndpointId = pulumi.Input.asOptionalInput<String>(clientVpnEndpointId),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationCidrBlock = pulumi.Input.asOptionalInput<String>(destinationCidrBlock),
      origin = pulumi.Input.asOptionalInput<String>(origin),
      region = pulumi.Input.asOptionalInput<String>(region),
      targetVpcSubnetId = pulumi.Input.asOptionalInput<String>(targetVpcSubnetId),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientVpnEndpointId': ?clientVpnEndpointId,
      'description': ?description,
      'destinationCidrBlock': ?destinationCidrBlock,
      'origin': ?origin,
      'region': ?region,
      'targetVpcSubnetId': ?targetVpcSubnetId,
      'type': ?type,
    };
  }

  factory RouteState.fromMap(Map<String, dynamic> map) {
    return RouteState(
      clientVpnEndpointId: map['clientVpnEndpointId'] == null ? null : pulumi.Output.create<String>(map['clientVpnEndpointId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationCidrBlock: map['destinationCidrBlock'] == null ? null : pulumi.Output.create<String>(map['destinationCidrBlock'] as String),
      origin: map['origin'] == null ? null : pulumi.Output.create<String>(map['origin'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      targetVpcSubnetId: map['targetVpcSubnetId'] == null ? null : pulumi.Output.create<String>(map['targetVpcSubnetId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

