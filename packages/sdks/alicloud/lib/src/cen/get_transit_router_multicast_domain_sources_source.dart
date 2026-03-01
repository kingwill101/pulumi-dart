// ignore_for_file: unused_element, unnecessary_cast


class GetTransitRouterMulticastDomainSourcesSource {
  /// The IP address of the multicast group to which the multicast source belongs. Value range: **224.0.0.1** to **239.255.255.254**. If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you.
  final String groupIpAddress;
  /// The id of the resource.
  final String id;
  /// ENI ID of the multicast source.
  final String networkInterfaceId;
  /// The status of the resource.
  final String status;
  /// The ID of the multicast domain to which the multicast source belongs.
  final String transitRouterMulticastDomainId;
  /// The VPC to which the ENI of the multicast source belongs. This field is mandatory for VPCs that is owned by another accounts.
  final String vpcId;

  /// Creates a new [GetTransitRouterMulticastDomainSourcesSource].
  /// [groupIpAddress] The IP address of the multicast group to which the multicast source belongs. Value range: **224.0.0.1** to **239.255.255.254**. If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you.
  /// [id] The id of the resource.
  /// [networkInterfaceId] ENI ID of the multicast source.
  /// [status] The status of the resource.
  /// [transitRouterMulticastDomainId] The ID of the multicast domain to which the multicast source belongs.
  /// [vpcId] The VPC to which the ENI of the multicast source belongs. This field is mandatory for VPCs that is owned by another accounts.
  GetTransitRouterMulticastDomainSourcesSource({
    required this.groupIpAddress,
    required this.id,
    required this.networkInterfaceId,
    required this.status,
    required this.transitRouterMulticastDomainId,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIpAddress': groupIpAddress,
      'id': id,
      'networkInterfaceId': networkInterfaceId,
      'status': status,
      'transitRouterMulticastDomainId': transitRouterMulticastDomainId,
      'vpcId': vpcId,
    };
  }

  factory GetTransitRouterMulticastDomainSourcesSource.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterMulticastDomainSourcesSource(
      groupIpAddress: map['groupIpAddress'] as String,
      id: map['id'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      status: map['status'] as String,
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}

