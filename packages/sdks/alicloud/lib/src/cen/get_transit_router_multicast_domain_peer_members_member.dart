// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRouterMulticastDomainPeerMembersMember {
  /// The IP address of the multicast group to which the multicast member belongs. Value range: **224.0.0.1** to **239.255.255.254**.If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you in the current multicast domain.
  final pulumi.Input<String> groupIpAddress;

  /// The `key` of the resource supplied above.The value is formulated as `&lt;transit_router_multicast_domain_id&gt;:&lt;group_ip_address&gt;:&lt;peer_transit_router_multicast_domain_id&gt;`.
  final pulumi.Input<String> id;

  /// The multicast domain ID of the peer transit router.
  final pulumi.Input<String> peerTransitRouterMulticastDomainId;

  /// The status of the resource
  final pulumi.Input<String> status;

  /// The ID of the multicast domain to which the multicast member belongs.
  final pulumi.Input<String> transitRouterMulticastDomainId;

  /// Creates a new [GetTransitRouterMulticastDomainPeerMembersMember].
  /// [groupIpAddress] The IP address of the multicast group to which the multicast member belongs. Value range: **224.0.0.1** to **239.255.255.254**.If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you in the current multicast domain.
  /// [id] The `key` of the resource supplied above.The value is formulated as `&lt;transit_router_multicast_domain_id&gt;:&lt;group_ip_address&gt;:&lt;peer_transit_router_multicast_domain_id&gt;`.
  /// [peerTransitRouterMulticastDomainId] The multicast domain ID of the peer transit router.
  /// [status] The status of the resource
  /// [transitRouterMulticastDomainId] The ID of the multicast domain to which the multicast member belongs.
  GetTransitRouterMulticastDomainPeerMembersMember({
    required this.groupIpAddress,
    required this.id,
    required this.peerTransitRouterMulticastDomainId,
    required this.status,
    required this.transitRouterMulticastDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIpAddress': groupIpAddress,
      'id': id,
      'peerTransitRouterMulticastDomainId': peerTransitRouterMulticastDomainId,
      'status': status,
      'transitRouterMulticastDomainId': transitRouterMulticastDomainId,
    };
  }

  factory GetTransitRouterMulticastDomainPeerMembersMember.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTransitRouterMulticastDomainPeerMembersMember(
      groupIpAddress: pulumi.Input.fromValue(map['groupIpAddress'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      peerTransitRouterMulticastDomainId: pulumi.Input.fromValue(
        map['peerTransitRouterMulticastDomainId'] as String,
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
      transitRouterMulticastDomainId: pulumi.Input.fromValue(
        map['transitRouterMulticastDomainId'] as String,
      ),
    );
  }
}
