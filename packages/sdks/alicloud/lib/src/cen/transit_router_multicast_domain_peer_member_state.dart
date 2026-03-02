// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitRouterMulticastDomainPeerMember resources.
class TransitRouterMulticastDomainPeerMemberState {
  /// Specifies whether only to precheck the request.
  final pulumi.Input<bool>? dryRun;
  /// The IP address of the multicast group to which the multicast member belongs. Value range: **224.0.0.1** to **239.255.255.254**.If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you in the current multicast domain.
  final pulumi.Input<String>? groupIpAddress;
  /// The IDs of the inter-region multicast domains.
  final pulumi.Input<String>? peerTransitRouterMulticastDomainId;
  /// The status of the multicast resource. Valid values:
  /// - Registering: being created
  /// - Registered: available
  /// - Deregistering: being deleted
  final pulumi.Input<String>? status;
  /// The ID of the multicast domain to which the multicast member belongs.
  final pulumi.Input<String>? transitRouterMulticastDomainId;

  /// Creates a new [TransitRouterMulticastDomainPeerMemberState].
  /// [dryRun] Specifies whether only to precheck the request.
  /// [groupIpAddress] The IP address of the multicast group to which the multicast member belongs. Value range: **224.0.0.1** to **239.255.255.254**.If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you in the current multicast domain.
  /// [peerTransitRouterMulticastDomainId] The IDs of the inter-region multicast domains.
  /// [status] The status of the multicast resource. Valid values:
  /// [transitRouterMulticastDomainId] The ID of the multicast domain to which the multicast member belongs.
  TransitRouterMulticastDomainPeerMemberState({
    this.dryRun,
    this.groupIpAddress,
    this.peerTransitRouterMulticastDomainId,
    this.status,
    this.transitRouterMulticastDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'groupIpAddress': ?groupIpAddress,
      'peerTransitRouterMulticastDomainId': ?peerTransitRouterMulticastDomainId,
      'status': ?status,
      'transitRouterMulticastDomainId': ?transitRouterMulticastDomainId,
    };
  }

  factory TransitRouterMulticastDomainPeerMemberState.fromMap(Map<String, dynamic> map) {
    return TransitRouterMulticastDomainPeerMemberState(
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      groupIpAddress: map['groupIpAddress'] == null ? null : (map['groupIpAddress'] as String).input(),
      peerTransitRouterMulticastDomainId: map['peerTransitRouterMulticastDomainId'] == null ? null : (map['peerTransitRouterMulticastDomainId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] == null ? null : (map['transitRouterMulticastDomainId'] as String).input(),
    );
  }
}

