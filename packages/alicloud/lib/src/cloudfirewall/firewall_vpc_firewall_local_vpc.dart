// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_vpc_firewall_local_vpc_local_vpc_cidr_table_list.dart';

class FirewallVpcFirewallLocalVpc {
  /// The ID of the instance of the ENI in the peer VPC.
  final String? eniId;
  /// The private IP address of the elastic network card in the peer VPC.
  final String? eniPrivateIpAddress;
  /// The network segment list of the local VPC. See `local_vpc_cidr_table_list` below.
  final List<FirewallVpcFirewallLocalVpcLocalVpcCidrTableList> localVpcCidrTableLists;
  /// The region ID of the local VPC.
  final String regionNo;
  /// The ID of the router interface in the peer VPC.
  final String? routerInterfaceId;
  /// The ID of the local VPC instance.
  final String vpcId;
  /// The instance name of the peer VPC.
  final String? vpcName;

  /// Creates a new [FirewallVpcFirewallLocalVpc].
  /// [eniId] The ID of the instance of the ENI in the peer VPC.
  /// [eniPrivateIpAddress] The private IP address of the elastic network card in the peer VPC.
  /// [localVpcCidrTableLists] The network segment list of the local VPC. See `local_vpc_cidr_table_list` below.
  /// [regionNo] The region ID of the local VPC.
  /// [routerInterfaceId] The ID of the router interface in the peer VPC.
  /// [vpcId] The ID of the local VPC instance.
  /// [vpcName] The instance name of the peer VPC.
  FirewallVpcFirewallLocalVpc({
    this.eniId,
    this.eniPrivateIpAddress,
    required this.localVpcCidrTableLists,
    required this.regionNo,
    this.routerInterfaceId,
    required this.vpcId,
    this.vpcName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eniId': ?eniId,
      'eniPrivateIpAddress': ?eniPrivateIpAddress,
      'localVpcCidrTableLists': pulumi.Input.encodeList<FirewallVpcFirewallLocalVpcLocalVpcCidrTableList, Map<String, dynamic>>(localVpcCidrTableLists, (value) => value.toMap()),
      'regionNo': regionNo,
      'routerInterfaceId': ?routerInterfaceId,
      'vpcId': vpcId,
      'vpcName': ?vpcName,
    };
  }

  factory FirewallVpcFirewallLocalVpc.fromMap(Map<String, dynamic> map) {
    return FirewallVpcFirewallLocalVpc(
      eniId: map['eniId'] == null ? null : map['eniId'] as String,
      eniPrivateIpAddress: map['eniPrivateIpAddress'] == null ? null : map['eniPrivateIpAddress'] as String,
      localVpcCidrTableLists: pulumi.Input.decodeList<FirewallVpcFirewallLocalVpcLocalVpcCidrTableList>(map['localVpcCidrTableLists'], (value) => FirewallVpcFirewallLocalVpcLocalVpcCidrTableList.fromMap((value as Map).cast<String, dynamic>())),
      regionNo: map['regionNo'] as String,
      routerInterfaceId: map['routerInterfaceId'] == null ? null : map['routerInterfaceId'] as String,
      vpcId: map['vpcId'] as String,
      vpcName: map['vpcName'] == null ? null : map['vpcName'] as String,
    );
  }
}

