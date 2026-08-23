// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMulticastDomainSource {
  /// The IP address assigned to the transit gateway multicast group.
  final pulumi.Input<String> groupIpAddress;
  /// The group members' network interface ID.
  final pulumi.Input<String> networkInterfaceId;

  /// Creates a new [GetMulticastDomainSource].
  /// [groupIpAddress] The IP address assigned to the transit gateway multicast group.
  /// [networkInterfaceId] The group members' network interface ID.
  const GetMulticastDomainSource({
    required this.groupIpAddress,
    required this.networkInterfaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIpAddress': groupIpAddress,
      'networkInterfaceId': networkInterfaceId,
    };
  }

  factory GetMulticastDomainSource.fromMap(Map<String, dynamic> map) {
    return GetMulticastDomainSource(
      groupIpAddress: pulumi.Input.fromValue(map['groupIpAddress'] as String),
      networkInterfaceId: pulumi.Input.fromValue(map['networkInterfaceId'] as String),
    );
  }
}
