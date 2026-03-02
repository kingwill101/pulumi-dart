// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_vpc_firewall_local_vpc_local_vpc_cidr_table_list.dart';

class FirewallVpcFirewallLocalVpc {
  /// The ID of the instance of the ENI in the peer VPC.
  final pulumi.Input<String>? eniId;
  /// The private IP address of the elastic network card in the peer VPC.
  final pulumi.Input<String>? eniPrivateIpAddress;
  /// The network segment list of the local VPC. See `local_vpc_cidr_table_list` below.
  final pulumi.Input<List<FirewallVpcFirewallLocalVpcLocalVpcCidrTableList>> localVpcCidrTableLists;
  /// The region ID of the local VPC.
  final pulumi.Input<String> regionNo;
  /// The ID of the router interface in the peer VPC.
  final pulumi.Input<String>? routerInterfaceId;
  /// The ID of the local VPC instance.
  final pulumi.Input<String> vpcId;
  /// The instance name of the peer VPC.
  final pulumi.Input<String>? vpcName;

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
      'localVpcCidrTableLists': pulumi.Input.mapInputValue<List<FirewallVpcFirewallLocalVpcLocalVpcCidrTableList>, List<Map<String, dynamic>>>(localVpcCidrTableLists, (value) => pulumi.Input.encodeList<FirewallVpcFirewallLocalVpcLocalVpcCidrTableList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regionNo': regionNo,
      'routerInterfaceId': ?routerInterfaceId,
      'vpcId': vpcId,
      'vpcName': ?vpcName,
    };
  }

  factory FirewallVpcFirewallLocalVpc.fromMap(Map<String, dynamic> map) {
    return FirewallVpcFirewallLocalVpc(
      eniId: map['eniId'] == null ? null : (map['eniId']! as String).input(),
      eniPrivateIpAddress: map['eniPrivateIpAddress'] == null ? null : (map['eniPrivateIpAddress']! as String).input(),
      localVpcCidrTableLists: (pulumi.Input.decodeList<FirewallVpcFirewallLocalVpcLocalVpcCidrTableList>(map['localVpcCidrTableLists'], (value) => FirewallVpcFirewallLocalVpcLocalVpcCidrTableList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      regionNo: (map['regionNo'] as String).input(),
      routerInterfaceId: map['routerInterfaceId'] == null ? null : (map['routerInterfaceId']! as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vpcName: map['vpcName'] == null ? null : (map['vpcName']! as String).input(),
    );
  }
}

