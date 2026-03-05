// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_firewall_cens_cen_local_vpc_vpc_cidr_table_list_route_entry_list.dart';

class GetVpcFirewallCensCenLocalVpcVpcCidrTableList {
  /// The list of route entries in the VPC.
  final pulumi.Input<List<GetVpcFirewallCensCenLocalVpcVpcCidrTableListRouteEntryList>> routeEntryLists;
  /// The ID of the route table of the VPC.
  final pulumi.Input<String> routeTableId;

  /// Creates a new [GetVpcFirewallCensCenLocalVpcVpcCidrTableList].
  /// [routeEntryLists] The list of route entries in the VPC.
  /// [routeTableId] The ID of the route table of the VPC.
  GetVpcFirewallCensCenLocalVpcVpcCidrTableList({
    required this.routeEntryLists,
    required this.routeTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routeEntryLists': pulumi.Input.mapInputValue<List<GetVpcFirewallCensCenLocalVpcVpcCidrTableListRouteEntryList>, List<Map<String, dynamic>>>(routeEntryLists, (value) => pulumi.Input.encodeList<GetVpcFirewallCensCenLocalVpcVpcCidrTableListRouteEntryList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routeTableId': routeTableId,
    };
  }

  factory GetVpcFirewallCensCenLocalVpcVpcCidrTableList.fromMap(Map<String, dynamic> map) {
    return GetVpcFirewallCensCenLocalVpcVpcCidrTableList(
      routeEntryLists: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVpcFirewallCensCenLocalVpcVpcCidrTableListRouteEntryList>(map['routeEntryLists']!, (value) => GetVpcFirewallCensCenLocalVpcVpcCidrTableListRouteEntryList.fromMap((value as Map).cast<String, dynamic>()))),
      routeTableId: pulumi.Input.fromValue(map['routeTableId'] as String),
    );
  }
}

