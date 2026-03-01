// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MulticastGroupSource resources.
class MulticastGroupSourceState {
  /// The IP address assigned to the transit gateway multicast group.
  final pulumi.Input<String>? groupIpAddress;
  /// The group members' network interface ID to register with the transit gateway multicast group.
  final pulumi.Input<String>? networkInterfaceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the transit gateway multicast domain.
  final pulumi.Input<String>? transitGatewayMulticastDomainId;

  /// Creates a new [MulticastGroupSourceState].
  /// [groupIpAddress] The IP address assigned to the transit gateway multicast group.
  /// [networkInterfaceId] The group members' network interface ID to register with the transit gateway multicast group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transitGatewayMulticastDomainId] The ID of the transit gateway multicast domain.
  MulticastGroupSourceState({
    pulumi.Output<String>? groupIpAddress,
    pulumi.Output<String>? networkInterfaceId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? transitGatewayMulticastDomainId,
  }) :
      groupIpAddress = pulumi.Input.asOptionalInput<String>(groupIpAddress),
      networkInterfaceId = pulumi.Input.asOptionalInput<String>(networkInterfaceId),
      region = pulumi.Input.asOptionalInput<String>(region),
      transitGatewayMulticastDomainId = pulumi.Input.asOptionalInput<String>(transitGatewayMulticastDomainId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIpAddress': ?groupIpAddress,
      'networkInterfaceId': ?networkInterfaceId,
      'region': ?region,
      'transitGatewayMulticastDomainId': ?transitGatewayMulticastDomainId,
    };
  }

  factory MulticastGroupSourceState.fromMap(Map<String, dynamic> map) {
    return MulticastGroupSourceState(
      groupIpAddress: map['groupIpAddress'] == null ? null : pulumi.Output.create<String>(map['groupIpAddress'] as String),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : pulumi.Output.create<String>(map['networkInterfaceId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      transitGatewayMulticastDomainId: map['transitGatewayMulticastDomainId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayMulticastDomainId'] as String),
    );
  }
}

