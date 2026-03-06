// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_transit_router_multicast_domain_peer_member_transit_router_multicast_domain_peer_member_args_doc}
/// The set of arguments for TransitRouterMulticastDomainPeerMember.
/// {@endtemplate}
/// {@macro pulumi_cen_transit_router_multicast_domain_peer_member_transit_router_multicast_domain_peer_member_args_doc}
class TransitRouterMulticastDomainPeerMemberArgs {
  /// Specifies whether only to precheck the request.
  final pulumi.Input<bool>? dryRun;
  /// The IP address of the multicast group to which the multicast member belongs. Value range: **224.0.0.1** to **239.255.255.254**.If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you in the current multicast domain.
  final pulumi.Input<String> groupIpAddress;
  /// The IDs of the inter-region multicast domains.
  final pulumi.Input<String> peerTransitRouterMulticastDomainId;
  /// The ID of the multicast domain to which the multicast member belongs.
  final pulumi.Input<String> transitRouterMulticastDomainId;

  /// Creates a new [TransitRouterMulticastDomainPeerMemberArgs].
  /// [dryRun] Specifies whether only to precheck the request.
  /// [groupIpAddress] The IP address of the multicast group to which the multicast member belongs. Value range: **224.0.0.1** to **239.255.255.254**.If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you in the current multicast domain.
  /// [peerTransitRouterMulticastDomainId] The IDs of the inter-region multicast domains.
  /// [transitRouterMulticastDomainId] The ID of the multicast domain to which the multicast member belongs.
  const TransitRouterMulticastDomainPeerMemberArgs({
    this.dryRun,
    required this.groupIpAddress,
    required this.peerTransitRouterMulticastDomainId,
    required this.transitRouterMulticastDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'groupIpAddress': groupIpAddress,
      'peerTransitRouterMulticastDomainId': peerTransitRouterMulticastDomainId,
      'transitRouterMulticastDomainId': transitRouterMulticastDomainId,
    };
  }

  factory TransitRouterMulticastDomainPeerMemberArgs.fromMap(Map<String, dynamic> map) {
    return TransitRouterMulticastDomainPeerMemberArgs(
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      groupIpAddress: pulumi.Input.fromValue(map['groupIpAddress'] as String),
      peerTransitRouterMulticastDomainId: pulumi.Input.fromValue(map['peerTransitRouterMulticastDomainId'] as String),
      transitRouterMulticastDomainId: pulumi.Input.fromValue(map['transitRouterMulticastDomainId'] as String),
    );
  }
}

