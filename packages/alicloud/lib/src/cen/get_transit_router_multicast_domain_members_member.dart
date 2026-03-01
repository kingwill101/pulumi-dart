// ignore_for_file: unused_element, unnecessary_cast


class GetTransitRouterMulticastDomainMembersMember {
  /// The IP address of the multicast group to which the multicast member belongs. If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you in the current multicast domain.
  final String groupIpAddress;
  /// The `key` of the resource supplied above.The value is formulated as `<transit_router_multicast_domain_id>:<group_ip_address>:<network_interface_id>`.
  final String id;
  /// The ID of the ENI.
  final String networkInterfaceId;
  /// The status of the resource
  final String status;
  /// The ID of the multicast domain to which the multicast member belongs.
  final String transitRouterMulticastDomainId;
  /// The VPC to which the ENI of the multicast member belongs. This field is mandatory for VPCs owned by another accounts.
  final String vpcId;

  /// Creates a new [GetTransitRouterMulticastDomainMembersMember].
  /// [groupIpAddress] The IP address of the multicast group to which the multicast member belongs. If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you in the current multicast domain.
  /// [id] The `key` of the resource supplied above.The value is formulated as `<transit_router_multicast_domain_id>:<group_ip_address>:<network_interface_id>`.
  /// [networkInterfaceId] The ID of the ENI.
  /// [status] The status of the resource
  /// [transitRouterMulticastDomainId] The ID of the multicast domain to which the multicast member belongs.
  /// [vpcId] The VPC to which the ENI of the multicast member belongs. This field is mandatory for VPCs owned by another accounts.
  GetTransitRouterMulticastDomainMembersMember({
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

  factory GetTransitRouterMulticastDomainMembersMember.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterMulticastDomainMembersMember(
      groupIpAddress: map['groupIpAddress'] as String,
      id: map['id'] as String,
      networkInterfaceId: map['networkInterfaceId'] as String,
      status: map['status'] as String,
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}

