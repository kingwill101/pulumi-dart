// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallVpcFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList {
  /// The target network segment of the peer VPC.
  final pulumi.Input<String> peerDestinationCidr;
  /// The ID of the next-hop instance in the peer VPC.
  final pulumi.Input<String> peerNextHopInstanceId;

  /// Creates a new [FirewallVpcFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList].
  /// [peerDestinationCidr] The target network segment of the peer VPC.
  /// [peerNextHopInstanceId] The ID of the next-hop instance in the peer VPC.
  FirewallVpcFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList({
    required this.peerDestinationCidr,
    required this.peerNextHopInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peerDestinationCidr': peerDestinationCidr,
      'peerNextHopInstanceId': peerNextHopInstanceId,
    };
  }

  factory FirewallVpcFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList.fromMap(Map<String, dynamic> map) {
    return FirewallVpcFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList(
      peerDestinationCidr: (map['peerDestinationCidr'] as String).input(),
      peerNextHopInstanceId: (map['peerNextHopInstanceId'] as String).input(),
    );
  }
}

