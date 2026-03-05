// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_firewalls_firewall_local_vpc_local_vpc_cidr_table_list_local_route_entry_list.dart';

class GetVpcFirewallsFirewallLocalVpcLocalVpcCidrTableList {
  /// The list of route entries of the local VPC.
  final pulumi.Input<List<GetVpcFirewallsFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryList>> localRouteEntryLists;
  /// The ID of the route table of the local VPC.
  final pulumi.Input<String> localRouteTableId;

  /// Creates a new [GetVpcFirewallsFirewallLocalVpcLocalVpcCidrTableList].
  /// [localRouteEntryLists] The list of route entries of the local VPC.
  /// [localRouteTableId] The ID of the route table of the local VPC.
  GetVpcFirewallsFirewallLocalVpcLocalVpcCidrTableList({
    required this.localRouteEntryLists,
    required this.localRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localRouteEntryLists': pulumi.Input.mapInputValue<List<GetVpcFirewallsFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryList>, List<Map<String, dynamic>>>(localRouteEntryLists, (value) => pulumi.Input.encodeList<GetVpcFirewallsFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localRouteTableId': localRouteTableId,
    };
  }

  factory GetVpcFirewallsFirewallLocalVpcLocalVpcCidrTableList.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallsFirewallLocalVpcLocalVpcCidrTableList(
      localRouteEntryLists: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVpcFirewallsFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryList>(map['localRouteEntryLists']!, (value) => GetVpcFirewallsFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryList.fromMap((value as Map).cast<String, dynamic>()))),
      localRouteTableId: pulumi.Input.fromValue(map['localRouteTableId'] as String),
    );
  }
}

