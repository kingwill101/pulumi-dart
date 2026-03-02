// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_firewalls_firewall_peer_vpc_peer_vpc_cidr_table_list_peer_route_entry_list.dart';

class GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableList {
  /// Peer VPC route entry list information.
  final pulumi.Input<List<GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList>> peerRouteEntryLists;
  /// The ID of the route table of the peer VPC.
  final pulumi.Input<String> peerRouteTableId;

  /// Creates a new [GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableList].
  /// [peerRouteEntryLists] Peer VPC route entry list information.
  /// [peerRouteTableId] The ID of the route table of the peer VPC.
  GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableList({
    required this.peerRouteEntryLists,
    required this.peerRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'peerRouteEntryLists': pulumi.Input.mapInputValue<List<GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList>, List<Map<String, dynamic>>>(peerRouteEntryLists, (value) => pulumi.Input.encodeList<GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'peerRouteTableId': peerRouteTableId,
    };
  }

  factory GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableList.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableList(
      peerRouteEntryLists: (pulumi.Input.decodeList<GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList>(map['peerRouteEntryLists'], (value) => GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      peerRouteTableId: (map['peerRouteTableId'] as String).input(),
    );
  }
}

