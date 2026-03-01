// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_firewalls_firewall_local_vpc_local_vpc_cidr_table_list.dart';

class GetVpcFirewallsFirewallLocalVpc {
  final String eniId;
  final String eniPrivateIpAddress;
  /// The network segment list of the local VPC.
  final List<GetVpcFirewallsFirewallLocalVpcLocalVpcCidrTableList> localVpcCidrTableLists;
  /// The region ID of the peer VPC.
  final String regionNo;
  final String routerInterfaceId;
  /// The ID of the peer VPC instance.
  final String vpcId;
  /// The instance name of the peer VPC.
  final String vpcName;

  /// Creates a new [GetVpcFirewallsFirewallLocalVpc].
  /// [eniId] Required.
  /// [eniPrivateIpAddress] Required.
  /// [localVpcCidrTableLists] The network segment list of the local VPC.
  /// [regionNo] The region ID of the peer VPC.
  /// [routerInterfaceId] Required.
  /// [vpcId] The ID of the peer VPC instance.
  /// [vpcName] The instance name of the peer VPC.
  GetVpcFirewallsFirewallLocalVpc({
    required this.eniId,
    required this.eniPrivateIpAddress,
    required this.localVpcCidrTableLists,
    required this.regionNo,
    required this.routerInterfaceId,
    required this.vpcId,
    required this.vpcName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eniId': eniId,
      'eniPrivateIpAddress': eniPrivateIpAddress,
      'localVpcCidrTableLists': pulumi.Input.encodeList<GetVpcFirewallsFirewallLocalVpcLocalVpcCidrTableList, Map<String, dynamic>>(localVpcCidrTableLists, (value) => value.toMap()),
      'regionNo': regionNo,
      'routerInterfaceId': routerInterfaceId,
      'vpcId': vpcId,
      'vpcName': vpcName,
    };
  }

  factory GetVpcFirewallsFirewallLocalVpc.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallsFirewallLocalVpc(
      eniId: map['eniId'] as String,
      eniPrivateIpAddress: map['eniPrivateIpAddress'] as String,
      localVpcCidrTableLists: pulumi.Input.decodeList<GetVpcFirewallsFirewallLocalVpcLocalVpcCidrTableList>(map['localVpcCidrTableLists'], (value) => GetVpcFirewallsFirewallLocalVpcLocalVpcCidrTableList.fromMap((value as Map).cast<String, dynamic>())),
      regionNo: map['regionNo'] as String,
      routerInterfaceId: map['routerInterfaceId'] as String,
      vpcId: map['vpcId'] as String,
      vpcName: map['vpcName'] as String,
    );
  }
}

