// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_firewall_nat_route_entry_list.dart';

/// Input properties used for looking up and filtering NatFirewall resources.
class NatFirewallState {
  /// Safety protection switch. Value:-**open**: open-**close**: close.
  final pulumi.Input<String>? firewallSwitch;
  /// Lang.
  final pulumi.Input<String>? lang;
  /// NAT gateway ID.
  final pulumi.Input<String>? natGatewayId;
  /// The list of routes to be switched by the NAT gateway. See `nat_route_entry_list` below.
  final pulumi.Input<List<NatFirewallNatRouteEntryList>>? natRouteEntryLists;
  /// NAT firewall name.
  final pulumi.Input<String>? proxyName;
  /// Region.
  final pulumi.Input<String>? regionNo;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// Whether strict mode is enabled 1-Enable strict mode 0-Disable strict mode.
  final pulumi.Input<int>? strictMode;
  /// The ID of the VPC instance.
  final pulumi.Input<String>? vpcId;
  /// Whether to use switch automatic mode. Value: **true**: Use automatic mode: **false**: Use manual mode.
  final pulumi.Input<String>? vswitchAuto;
  /// The network segment of the virtual switch. Required for Switch automatic mode.
  final pulumi.Input<String>? vswitchCidr;
  /// The switch ID. Required for switch manual mode.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [NatFirewallState].
  /// [firewallSwitch] Safety protection switch. Value:-**open**: open-**close**: close.
  /// [lang] Lang.
  /// [natGatewayId] NAT gateway ID.
  /// [natRouteEntryLists] The list of routes to be switched by the NAT gateway. See `nat_route_entry_list` below.
  /// [proxyName] NAT firewall name.
  /// [regionNo] Region.
  /// [status] The status of the resource.
  /// [strictMode] Whether strict mode is enabled 1-Enable strict mode 0-Disable strict mode.
  /// [vpcId] The ID of the VPC instance.
  /// [vswitchAuto] Whether to use switch automatic mode. Value: **true**: Use automatic mode: **false**: Use manual mode.
  /// [vswitchCidr] The network segment of the virtual switch. Required for Switch automatic mode.
  /// [vswitchId] The switch ID. Required for switch manual mode.
  NatFirewallState({
    this.firewallSwitch,
    this.lang,
    this.natGatewayId,
    this.natRouteEntryLists,
    this.proxyName,
    this.regionNo,
    this.status,
    this.strictMode,
    this.vpcId,
    this.vswitchAuto,
    this.vswitchCidr,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallSwitch': ?firewallSwitch,
      'lang': ?lang,
      'natGatewayId': ?natGatewayId,
      'natRouteEntryLists': ?pulumi.Input.mapOptionalInputValue<List<NatFirewallNatRouteEntryList>, List<Map<String, dynamic>>>(natRouteEntryLists, (value) => pulumi.Input.encodeList<NatFirewallNatRouteEntryList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'proxyName': ?proxyName,
      'regionNo': ?regionNo,
      'status': ?status,
      'strictMode': ?strictMode,
      'vpcId': ?vpcId,
      'vswitchAuto': ?vswitchAuto,
      'vswitchCidr': ?vswitchCidr,
      'vswitchId': ?vswitchId,
    };
  }

  factory NatFirewallState.fromMap(Map<String, dynamic> map) {
    return NatFirewallState(
      firewallSwitch: map['firewallSwitch'] == null ? null : (map['firewallSwitch']! as String).input(),
      lang: map['lang'] == null ? null : (map['lang']! as String).input(),
      natGatewayId: map['natGatewayId'] == null ? null : (map['natGatewayId']! as String).input(),
      natRouteEntryLists: map['natRouteEntryLists'] == null ? null : (pulumi.Input.decodeList<NatFirewallNatRouteEntryList>(map['natRouteEntryLists']!, (value) => NatFirewallNatRouteEntryList.fromMap((value as Map).cast<String, dynamic>()))).input(),
      proxyName: map['proxyName'] == null ? null : (map['proxyName']! as String).input(),
      regionNo: map['regionNo'] == null ? null : (map['regionNo']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      strictMode: map['strictMode'] == null ? null : (map['strictMode']! as int).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchAuto: map['vswitchAuto'] == null ? null : (map['vswitchAuto']! as String).input(),
      vswitchCidr: map['vswitchCidr'] == null ? null : (map['vswitchCidr']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
    );
  }
}

