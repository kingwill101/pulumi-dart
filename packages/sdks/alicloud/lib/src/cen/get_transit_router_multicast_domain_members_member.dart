// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRouterMulticastDomainMembersMember {
  /// The IP address of the multicast group to which the multicast member belongs. If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you in the current multicast domain.
  final pulumi.Input<String> groupIpAddress;
  /// The `key` of the resource supplied above.The value is formulated as `<transit_router_multicast_domain_id>:<group_ip_address>:<network_interface_id>`.
  final pulumi.Input<String> id;
  /// The ID of the ENI.
  final pulumi.Input<String> networkInterfaceId;
  /// The status of the resource
  final pulumi.Input<String> status;
  /// The ID of the multicast domain to which the multicast member belongs.
  final pulumi.Input<String> transitRouterMulticastDomainId;
  /// The VPC to which the ENI of the multicast member belongs. This field is mandatory for VPCs owned by another accounts.
  final pulumi.Input<String> vpcId;

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
      groupIpAddress: (map['groupIpAddress'] as String).input(),
      id: (map['id'] as String).input(),
      networkInterfaceId: (map['networkInterfaceId'] as String).input(),
      status: (map['status'] as String).input(),
      transitRouterMulticastDomainId: (map['transitRouterMulticastDomainId'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}

