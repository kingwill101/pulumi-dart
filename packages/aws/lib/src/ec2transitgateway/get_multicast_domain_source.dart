// ignore_for_file: unused_element, unnecessary_cast


class GetMulticastDomainSource {
  /// The IP address assigned to the transit gateway multicast group.
  final String groupIpAddress;
  /// The group members' network interface ID.
  final String networkInterfaceId;

  /// Creates a new [GetMulticastDomainSource].
  /// [groupIpAddress] The IP address assigned to the transit gateway multicast group.
  /// [networkInterfaceId] The group members' network interface ID.
  GetMulticastDomainSource({
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
      groupIpAddress: map['groupIpAddress'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
    );
  }
}

