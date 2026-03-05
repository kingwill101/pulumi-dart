// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_vpc_firewall_peer_vpc_peer_vpc_cidr_table_list.dart';

class FirewallVpcFirewallPeerVpc {
  /// The ID of the instance of the ENI in the peer VPC.
  final pulumi.Input<String>? eniId;
  /// The private IP address of the elastic network card in the peer VPC.
  final pulumi.Input<String>? eniPrivateIpAddress;
  /// The network segment list of the peer VPC. See `peer_vpc_cidr_table_list` below.
  final pulumi.Input<List<FirewallVpcFirewallPeerVpcPeerVpcCidrTableList>> peerVpcCidrTableLists;
  /// The region ID of the peer VPC.
  final pulumi.Input<String> regionNo;
  /// The ID of the router interface in the peer VPC.
  final pulumi.Input<String>? routerInterfaceId;
  /// The ID of the peer VPC instance.
  final pulumi.Input<String> vpcId;
  /// The instance name of the peer VPC.
  final pulumi.Input<String>? vpcName;

  /// Creates a new [FirewallVpcFirewallPeerVpc].
  /// [eniId] The ID of the instance of the ENI in the peer VPC.
  /// [eniPrivateIpAddress] The private IP address of the elastic network card in the peer VPC.
  /// [peerVpcCidrTableLists] The network segment list of the peer VPC. See `peer_vpc_cidr_table_list` below.
  /// [regionNo] The region ID of the peer VPC.
  /// [routerInterfaceId] The ID of the router interface in the peer VPC.
  /// [vpcId] The ID of the peer VPC instance.
  /// [vpcName] The instance name of the peer VPC.
  FirewallVpcFirewallPeerVpc({
    this.eniId,
    this.eniPrivateIpAddress,
    required this.peerVpcCidrTableLists,
    required this.regionNo,
    this.routerInterfaceId,
    required this.vpcId,
    this.vpcName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eniId': ?eniId,
      'eniPrivateIpAddress': ?eniPrivateIpAddress,
      'peerVpcCidrTableLists': pulumi.Input.mapInputValue<List<FirewallVpcFirewallPeerVpcPeerVpcCidrTableList>, List<Map<String, dynamic>>>(peerVpcCidrTableLists, (value) => pulumi.Input.encodeList<FirewallVpcFirewallPeerVpcPeerVpcCidrTableList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regionNo': regionNo,
      'routerInterfaceId': ?routerInterfaceId,
      'vpcId': vpcId,
      'vpcName': ?vpcName,
    };
  }

  factory FirewallVpcFirewallPeerVpc.fromMap(Map<String, dynamic> map) {
    return FirewallVpcFirewallPeerVpc(
      eniId: (() { final guardedValue = map['eniId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eniPrivateIpAddress: (() { final guardedValue = map['eniPrivateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerVpcCidrTableLists: pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallVpcFirewallPeerVpcPeerVpcCidrTableList>(map['peerVpcCidrTableLists']!, (value) => FirewallVpcFirewallPeerVpcPeerVpcCidrTableList.fromMap((value as Map).cast<String, dynamic>()))),
      regionNo: pulumi.Input.fromValue(map['regionNo'] as String),
      routerInterfaceId: (() { final guardedValue = map['routerInterfaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vpcName: (() { final guardedValue = map['vpcName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

