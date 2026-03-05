// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_vpc_firewall_cen_local_vpc_vpc_cidr_table_list_route_entry_list.dart';

class FirewallVpcFirewallCenLocalVpcVpcCidrTableList {
  /// The list of route entries in the VPC.
  final pulumi.Input<List<FirewallVpcFirewallCenLocalVpcVpcCidrTableListRouteEntryList>>? routeEntryLists;
  /// The ID of the route table of the VPC.
  final pulumi.Input<String>? routeTableId;

  /// Creates a new [FirewallVpcFirewallCenLocalVpcVpcCidrTableList].
  /// [routeEntryLists] The list of route entries in the VPC.
  /// [routeTableId] The ID of the route table of the VPC.
  FirewallVpcFirewallCenLocalVpcVpcCidrTableList({
    this.routeEntryLists,
    this.routeTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routeEntryLists': ?pulumi.Input.mapOptionalInputValue<List<FirewallVpcFirewallCenLocalVpcVpcCidrTableListRouteEntryList>, List<Map<String, dynamic>>>(routeEntryLists, (value) => pulumi.Input.encodeList<FirewallVpcFirewallCenLocalVpcVpcCidrTableListRouteEntryList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routeTableId': ?routeTableId,
    };
  }

  factory FirewallVpcFirewallCenLocalVpcVpcCidrTableList.fromMap(Map<String, dynamic> map) {
    return FirewallVpcFirewallCenLocalVpcVpcCidrTableList(
      routeEntryLists: (() { final guardedValue = map['routeEntryLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FirewallVpcFirewallCenLocalVpcVpcCidrTableListRouteEntryList>(guardedValue, (value) => FirewallVpcFirewallCenLocalVpcVpcCidrTableListRouteEntryList.fromMap((value as Map).cast<String, dynamic>()))); })(),
      routeTableId: (() { final guardedValue = map['routeTableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

