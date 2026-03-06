// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_nat_firewalls_firewall_nat_route_entry_list.dart';

class GetNatFirewallsFirewall {
  /// Alibaba Cloud account ID
  final pulumi.Input<int> aliUid;
  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;
  /// Member Account ID
  final pulumi.Input<int> memberUid;
  /// NAT gateway ID
  final pulumi.Input<String> natGatewayId;
  /// NAT Gateway name
  final pulumi.Input<String> natGatewayName;
  /// The list of routes to be switched by the NAT gateway.
  final pulumi.Input<List<GetNatFirewallsFirewallNatRouteEntryList>> natRouteEntryLists;
  /// NAT firewall ID
  final pulumi.Input<String> proxyId;
  /// NAT firewall name
  final pulumi.Input<String> proxyName;
  /// Whether strict mode is enabled1-Enable strict mode0-Disable strict mode
  final pulumi.Input<int> strictMode;
  /// The ID of the VPC instance.
  final pulumi.Input<String> vpcId;

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
  const GetNatFirewallsFirewall({
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
      'natRouteEntryLists': pulumi.Input.mapInputValue<List<GetNatFirewallsFirewallNatRouteEntryList>, List<Map<String, dynamic>>>(natRouteEntryLists, (value) => pulumi.Input.encodeList<GetNatFirewallsFirewallNatRouteEntryList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'proxyId': proxyId,
      'proxyName': proxyName,
      'strictMode': strictMode,
      'vpcId': vpcId,
    };
  }

  factory GetNatFirewallsFirewall.fromMap(Map<String, dynamic> map) {
    return GetNatFirewallsFirewall(
      aliUid: pulumi.Input.fromValue(map['aliUid'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      memberUid: pulumi.Input.fromValue(map['memberUid'] as int),
      natGatewayId: pulumi.Input.fromValue(map['natGatewayId'] as String),
      natGatewayName: pulumi.Input.fromValue(map['natGatewayName'] as String),
      natRouteEntryLists: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNatFirewallsFirewallNatRouteEntryList>(map['natRouteEntryLists']!, (value) => GetNatFirewallsFirewallNatRouteEntryList.fromMap((value as Map).cast<String, dynamic>()))),
      proxyId: pulumi.Input.fromValue(map['proxyId'] as String),
      proxyName: pulumi.Input.fromValue(map['proxyName'] as String),
      strictMode: pulumi.Input.fromValue(map['strictMode'] as int),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

