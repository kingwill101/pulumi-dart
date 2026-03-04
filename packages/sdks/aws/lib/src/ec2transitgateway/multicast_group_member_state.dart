// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MulticastGroupMember resources.
class MulticastGroupMemberState {
  /// The IP address assigned to the transit gateway multicast group.
  final pulumi.Input<String>? groupIpAddress;

  /// The group members' network interface ID to register with the transit gateway multicast group.
  final pulumi.Input<String>? networkInterfaceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the transit gateway multicast domain.
  final pulumi.Input<String>? transitGatewayMulticastDomainId;

  /// Creates a new [MulticastGroupMemberState].
  /// [groupIpAddress] The IP address assigned to the transit gateway multicast group.
  /// [networkInterfaceId] The group members' network interface ID to register with the transit gateway multicast group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [transitGatewayMulticastDomainId] The ID of the transit gateway multicast domain.
  MulticastGroupMemberState({
    this.groupIpAddress,
    this.networkInterfaceId,
    this.region,
    this.transitGatewayMulticastDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIpAddress': ?groupIpAddress,
      'networkInterfaceId': ?networkInterfaceId,
      'region': ?region,
      'transitGatewayMulticastDomainId': ?transitGatewayMulticastDomainId,
    };
  }

  factory MulticastGroupMemberState.fromMap(Map<String, dynamic> map) {
    return MulticastGroupMemberState(
      groupIpAddress: (() {
        final guardedValue = map['groupIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkInterfaceId: (() {
        final guardedValue = map['networkInterfaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitGatewayMulticastDomainId: (() {
        final guardedValue = map['transitGatewayMulticastDomainId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
