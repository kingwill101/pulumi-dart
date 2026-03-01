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
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? groupIpAddress,
    pulumi.Output<String>? peerTransitRouterMulticastDomainId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? transitRouterMulticastDomainId,
  }) :
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      groupIpAddress = pulumi.Input.asOptionalInput<String>(groupIpAddress),
      peerTransitRouterMulticastDomainId = pulumi.Input.asOptionalInput<String>(peerTransitRouterMulticastDomainId),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterMulticastDomainId = pulumi.Input.asOptionalInput<String>(transitRouterMulticastDomainId);

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
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      groupIpAddress: map['groupIpAddress'] == null ? null : pulumi.Output.create<String>(map['groupIpAddress'] as String),
      peerTransitRouterMulticastDomainId: map['peerTransitRouterMulticastDomainId'] == null ? null : pulumi.Output.create<String>(map['peerTransitRouterMulticastDomainId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouterMulticastDomainId: map['transitRouterMulticastDomainId'] == null ? null : pulumi.Output.create<String>(map['transitRouterMulticastDomainId'] as String),
    );
  }
}

