// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_firewalls_firewall_peer_vpc_peer_vpc_cidr_table_list.dart';

class GetVpcFirewallsFirewallPeerVpc {
  final pulumi.Input<String> eniId;
  final pulumi.Input<String> eniPrivateIpAddress;
  /// The network segment list of the peer VPC.
  final pulumi.Input<List<GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableList>> peerVpcCidrTableLists;
  /// The region ID of the peer VPC.
  final pulumi.Input<String> regionNo;
  final pulumi.Input<String> routerInterfaceId;
  /// The ID of the peer VPC instance.
  final pulumi.Input<String> vpcId;
  /// The instance name of the peer VPC.
  final pulumi.Input<String> vpcName;

  /// Creates a new [GetVpcFirewallsFirewallPeerVpc].
  /// [eniId] Required.
  /// [eniPrivateIpAddress] Required.
  /// [peerVpcCidrTableLists] The network segment list of the peer VPC.
  /// [regionNo] The region ID of the peer VPC.
  /// [routerInterfaceId] Required.
  /// [vpcId] The ID of the peer VPC instance.
  /// [vpcName] The instance name of the peer VPC.
  const GetVpcFirewallsFirewallPeerVpc({
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
      'peerVpcCidrTableLists': pulumi.Input.mapInputValue<List<GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableList>, List<Map<String, dynamic>>>(peerVpcCidrTableLists, (value) => pulumi.Input.encodeList<GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regionNo': regionNo,
      'routerInterfaceId': routerInterfaceId,
      'vpcId': vpcId,
      'vpcName': vpcName,
    };
  }

  factory GetVpcFirewallsFirewallPeerVpc.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallsFirewallPeerVpc(
      eniId: pulumi.Input.fromValue(map['eniId'] as String),
      eniPrivateIpAddress: pulumi.Input.fromValue(map['eniPrivateIpAddress'] as String),
      peerVpcCidrTableLists: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableList>(map['peerVpcCidrTableLists']!, (value) => GetVpcFirewallsFirewallPeerVpcPeerVpcCidrTableList.fromMap((value as Map).cast<String, dynamic>()))),
      regionNo: pulumi.Input.fromValue(map['regionNo'] as String),
      routerInterfaceId: pulumi.Input.fromValue(map['routerInterfaceId'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vpcName: pulumi.Input.fromValue(map['vpcName'] as String),
    );
  }
}

