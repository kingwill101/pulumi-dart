// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_vpc_firewall_local_vpc_local_vpc_cidr_table_list_local_route_entry_list.dart';

class FirewallVpcFirewallLocalVpcLocalVpcCidrTableList {
  /// The list of route entries of the local VPC. See `local_route_entry_list` below.
  final pulumi.Input<
    List<FirewallVpcFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryList>
  >
  localRouteEntryLists;

  /// The ID of the route table of the local VPC.
  final pulumi.Input<String> localRouteTableId;

  /// Creates a new [FirewallVpcFirewallLocalVpcLocalVpcCidrTableList].
  /// [localRouteEntryLists] The list of route entries of the local VPC. See `local_route_entry_list` below.
  /// [localRouteTableId] The ID of the route table of the local VPC.
  FirewallVpcFirewallLocalVpcLocalVpcCidrTableList({
    required this.localRouteEntryLists,
    required this.localRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localRouteEntryLists':
          pulumi.Input.mapInputValue<
            List<
              FirewallVpcFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryList
            >,
            List<Map<String, dynamic>>
          >(
            localRouteEntryLists,
            (value) =>
                pulumi.Input.encodeList<
                  FirewallVpcFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryList,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'localRouteTableId': localRouteTableId,
    };
  }

  factory FirewallVpcFirewallLocalVpcLocalVpcCidrTableList.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirewallVpcFirewallLocalVpcLocalVpcCidrTableList(
      localRouteEntryLists: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          FirewallVpcFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryList
        >(
          map['localRouteEntryLists']!,
          (value) =>
              FirewallVpcFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryList.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      localRouteTableId: pulumi.Input.fromValue(
        map['localRouteTableId'] as String,
      ),
    );
  }
}
