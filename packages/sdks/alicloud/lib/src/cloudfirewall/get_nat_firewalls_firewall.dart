// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nat_firewalls_firewall_nat_route_entry_list.dart';

class GetNatFirewallsFirewall {
  /// Alibaba Cloud account ID
  final int aliUid;
  /// The ID of the resource supplied above.
  final String id;
  /// Member Account ID
  final int memberUid;
  /// NAT gateway ID
  final String natGatewayId;
  /// NAT Gateway name
  final String natGatewayName;
  /// The list of routes to be switched by the NAT gateway.
  final List<GetNatFirewallsFirewallNatRouteEntryList> natRouteEntryLists;
  /// NAT firewall ID
  final String proxyId;
  /// NAT firewall name
  final String proxyName;
  /// Whether strict mode is enabled1-Enable strict mode0-Disable strict mode
  final int strictMode;
  /// The ID of the VPC instance.
  final String vpcId;

  /// Creates a new [GetNatFirewallsFirewall].
  /// [aliUid] Alibaba Cloud account ID
  /// [id] The ID of the resource supplied above.
  /// [memberUid] Member Account ID
  /// [natGatewayId] NAT gateway ID
  /// [natGatewayName] NAT Gateway name
  /// [natRouteEntryLists] The list of routes to be switched by the NAT gateway.
  /// [proxyId] NAT firewall ID
  /// [proxyName] NAT firewall name
  /// [strictMode] Whether strict mode is enabled1-Enable strict mode0-Disable strict mode
  /// [vpcId] The ID of the VPC instance.
  GetNatFirewallsFirewall({
    required this.aliUid,
    required this.id,
    required this.memberUid,
    required this.natGatewayId,
    required this.natGatewayName,
    required this.natRouteEntryLists,
    required this.proxyId,
    required this.proxyName,
    required this.strictMode,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliUid': aliUid,
      'id': id,
      'memberUid': memberUid,
      'natGatewayId': natGatewayId,
      'natGatewayName': natGatewayName,
      'natRouteEntryLists': pulumi.Input.encodeList<GetNatFirewallsFirewallNatRouteEntryList, Map<String, dynamic>>(natRouteEntryLists, (value) => value.toMap()),
      'proxyId': proxyId,
      'proxyName': proxyName,
      'strictMode': strictMode,
      'vpcId': vpcId,
    };
  }

  factory GetNatFirewallsFirewall.fromMap(Map<String, dynamic> map) {
    return GetNatFirewallsFirewall(
      aliUid: map['aliUid'] as int,
      id: map['id'] as String,
      memberUid: map['memberUid'] as int,
      natGatewayId: map['natGatewayId'] as String,
      natGatewayName: map['natGatewayName'] as String,
      natRouteEntryLists: pulumi.Input.decodeList<GetNatFirewallsFirewallNatRouteEntryList>(map['natRouteEntryLists'], (value) => GetNatFirewallsFirewallNatRouteEntryList.fromMap((value as Map).cast<String, dynamic>())),
      proxyId: map['proxyId'] as String,
      proxyName: map['proxyName'] as String,
      strictMode: map['strictMode'] as int,
      vpcId: map['vpcId'] as String,
    );
  }
}

