// ignore_for_file: unused_element, unnecessary_cast

class GetMulticastDomainMember {
  /// The IP address assigned to the transit gateway multicast group.
  final String groupIpAddress;

  /// The group members' network interface ID.
  final String networkInterfaceId;

  /// Creates a new [GetMulticastDomainMember].
  /// [groupIpAddress] The IP address assigned to the transit gateway multicast group.
  /// [networkInterfaceId] The group members' network interface ID.
  GetMulticastDomainMember({
    required this.groupIpAddress,
    required this.networkInterfaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupIpAddress'] = groupIpAddress;
    map['networkInterfaceId'] = networkInterfaceId;
    return map;
  }

  factory GetMulticastDomainMember.fromMap(Map<String, dynamic> map) {
    return GetMulticastDomainMember(
      groupIpAddress: map['groupIpAddress'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
    );
  }
}
