// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_firewalls_firewall_local_vpc_local_vpc_cidr_table_list.dart';

class GetVpcFirewallsFirewallLocalVpc {
  final pulumi.Input<String> eniId;
  final pulumi.Input<String> eniPrivateIpAddress;
  /// The network segment list of the local VPC.
  final pulumi.Input<List<GetVpcFirewallsFirewallLocalVpcLocalVpcCidrTableList>> localVpcCidrTableLists;
  /// The region ID of the peer VPC.
  final pulumi.Input<String> regionNo;
  final pulumi.Input<String> routerInterfaceId;
  /// The ID of the peer VPC instance.
  final pulumi.Input<String> vpcId;
  /// The instance name of the peer VPC.
  final pulumi.Input<String> vpcName;

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
      'localVpcCidrTableLists': pulumi.Input.mapInputValue<List<GetVpcFirewallsFirewallLocalVpcLocalVpcCidrTableList>, List<Map<String, dynamic>>>(localVpcCidrTableLists, (value) => pulumi.Input.encodeList<GetVpcFirewallsFirewallLocalVpcLocalVpcCidrTableList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'regionNo': regionNo,
      'routerInterfaceId': routerInterfaceId,
      'vpcId': vpcId,
      'vpcName': vpcName,
    };
  }

  factory GetVpcFirewallsFirewallLocalVpc.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallsFirewallLocalVpc(
      eniId: pulumi.Input.fromValue(map['eniId'] as String),
      eniPrivateIpAddress: pulumi.Input.fromValue(map['eniPrivateIpAddress'] as String),
      localVpcCidrTableLists: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVpcFirewallsFirewallLocalVpcLocalVpcCidrTableList>(map['localVpcCidrTableLists']!, (value) => GetVpcFirewallsFirewallLocalVpcLocalVpcCidrTableList.fromMap((value as Map).cast<String, dynamic>()))),
      regionNo: pulumi.Input.fromValue(map['regionNo'] as String),
      routerInterfaceId: pulumi.Input.fromValue(map['routerInterfaceId'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vpcName: pulumi.Input.fromValue(map['vpcName'] as String),
    );
  }
}

