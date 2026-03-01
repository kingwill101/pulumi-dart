// ignore_for_file: unused_element, unnecessary_cast


class GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList {
  /// The target network segment of the peer VPC.
  final String peerDestinationCidr;
  /// The ID of the next-hop instance in the peer VPC.
  final String peerNextHopInstanceId;

  /// Creates a new [GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList].
  /// [peerDestinationCidr] The target network segment of the peer VPC.
  /// [peerNextHopInstanceId] The ID of the next-hop instance in the peer VPC.
  GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList({
    required this.peerDestinationCidr,
    required this.peerNextHopInstanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peerDestinationCidr': peerDestinationCidr,
      'peerNextHopInstanceId': peerNextHopInstanceId,
    };
  }

  factory GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList(
      peerDestinationCidr: map['peerDestinationCidr'] as String,
      peerNextHopInstanceId: map['peerNextHopInstanceId'] as String,
    );
  }
}

