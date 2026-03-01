// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_firewalls_firewall_peer_vpc_peer_vpc_cidr_table_list.dart';

class GetVpcFirewallsFirewallPeerVpc {
  final String eniId;
  final String eniPrivateIpAddress;
  /// The network segment list of the peer VPC.
  final List<GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableList> peerVpcCidrTableLists;
  /// The region ID of the peer VPC.
  final String regionNo;
  final String routerInterfaceId;
  /// The ID of the peer VPC instance.
  final String vpcId;
  /// The instance name of the peer VPC.
  final String vpcName;

  /// Creates a new [GetVpcFirewallsFirewallPeerVpc].
  /// [eniId] Required.
  /// [eniPrivateIpAddress] Required.
  /// [peerVpcCidrTableLists] The network segment list of the peer VPC.
  /// [regionNo] The region ID of the peer VPC.
  /// [routerInterfaceId] Required.
  /// [vpcId] The ID of the peer VPC instance.
  /// [vpcName] The instance name of the peer VPC.
  GetVpcFirewallsFirewallPeerVpc({
    required this.eniId,
    required this.eniPrivateIpAddress,
    required this.peerVpcCidrTableLists,
    required this.regionNo,
    required this.routerInterfaceId,
    required this.vpcId,
    required this.vpcName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eniId': eniId,
      'eniPrivateIpAddress': eniPrivateIpAddress,
      'peerVpcCidrTableLists': pulumi.Input.encodeList<GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableList, Map<String, dynamic>>(peerVpcCidrTableLists, (value) => value.toMap()),
      'regionNo': regionNo,
      'routerInterfaceId': routerInterfaceId,
      'vpcId': vpcId,
      'vpcName': vpcName,
    };
  }

  factory GetVpcFirewallsFirewallPeerVpc.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallsFirewallPeerVpc(
      eniId: map['eniId'] as String,
      eniPrivateIpAddress: map['eniPrivateIpAddress'] as String,
      peerVpcCidrTableLists: pulumi.Input.decodeList<GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableList>(map['peerVpcCidrTableLists'], (value) => GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableList.fromMap((value as Map).cast<String, dynamic>())),
      regionNo: map['regionNo'] as String,
      routerInterfaceId: map['routerInterfaceId'] as String,
      vpcId: map['vpcId'] as String,
      vpcName: map['vpcName'] as String,
    );
  }
}

