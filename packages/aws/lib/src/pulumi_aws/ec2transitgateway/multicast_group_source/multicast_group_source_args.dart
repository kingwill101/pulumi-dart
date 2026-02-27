// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for MulticastGroupSource.
class MulticastGroupSourceArgs {
  /// The IP address assigned to the transit gateway multicast group.
  final pulumi.Input<String> groupIpAddress;

  /// The group members' network interface ID to register with the transit gateway multicast group.
  final pulumi.Input<String> networkInterfaceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID of the transit gateway multicast domain.
  final pulumi.Input<String> transitGatewayMulticastDomainId;

  MulticastGroupSourceArgs({
    required this.groupIpAddress,
    required this.networkInterfaceId,
    this.region,
    required this.transitGatewayMulticastDomainId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupIpAddress'] = groupIpAddress;
    map['networkInterfaceId'] = networkInterfaceId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['transitGatewayMulticastDomainId'] = transitGatewayMulticastDomainId;
    return map;
  }

  factory MulticastGroupSourceArgs.fromMap(Map<String, dynamic> map) {
    return MulticastGroupSourceArgs(
      groupIpAddress: pulumi.Input.asInput<String>(map['groupIpAddress']),
      networkInterfaceId:
          pulumi.Input.asInput<String>(map['networkInterfaceId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      transitGatewayMulticastDomainId:
          pulumi.Input.asInput<String>(map['transitGatewayMulticastDomainId']),
    );
  }
}
