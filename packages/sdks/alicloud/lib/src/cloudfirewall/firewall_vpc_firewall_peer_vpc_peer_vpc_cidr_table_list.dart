// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_vpc_firewall_peer_vpc_peer_vpc_cidr_table_list_peer_route_entry_list.dart';

class FirewallVpcFirewallPeerVpcPeerVpcCidrTableList {
  /// Peer VPC route entry list information. See `peer_route_entry_list` below.
  final pulumi.Input<List<FirewallVpcFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList>> peerRouteEntryLists;
  /// The ID of the route table of the peer VPC.
  final pulumi.Input<String> peerRouteTableId;

  /// Creates a new [FirewallVpcFirewallPeerVpcPeerVpcCidrTableList].
  /// [peerRouteEntryLists] Peer VPC route entry list information. See `peer_route_entry_list` below.
  /// [peerRouteTableId] The ID of the route table of the peer VPC.
  FirewallVpcFirewallPeerVpcPeerVpcCidrTableList({
    required this.peerRouteEntryLists,
    required this.peerRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peerRouteEntryLists': pulumi.Input.mapInputValue<List<FirewallVpcFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList>, List<Map<String, dynamic>>>(peerRouteEntryLists, (value) => pulumi.Input.encodeList<FirewallVpcFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'peerRouteTableId': peerRouteTableId,
    };
  }

  factory FirewallVpcFirewallPeerVpcPeerVpcCidrTableList.fromMap(Map<String, dynamic> map) {
    return FirewallVpcFirewallPeerVpcPeerVpcCidrTableList(
      peerRouteEntryLists: pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallVpcFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList>(map['peerRouteEntryLists']!, (value) => FirewallVpcFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList.fromMap((value as Map).cast<String, dynamic>()))),
      peerRouteTableId: pulumi.Input.fromValue(map['peerRouteTableId'] as String),
    );
  }
}

