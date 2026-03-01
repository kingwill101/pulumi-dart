// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_firewall_nat_route_entry_list.dart';

/// {@template pulumi_cloudfirewall_nat_firewall_nat_firewall_args_doc}
/// The set of arguments for NatFirewall.
/// {@endtemplate}
/// {@macro pulumi_cloudfirewall_nat_firewall_nat_firewall_args_doc}
class NatFirewallArgs {
  /// Safety protection switch. Value:-**open**: open-**close**: close.
  final pulumi.Input<String>? firewallSwitch;
  /// Lang.
  final pulumi.Input<String>? lang;
  /// NAT gateway ID.
  final pulumi.Input<String> natGatewayId;
  /// The list of routes to be switched by the NAT gateway. See `nat_route_entry_list` below.
  final pulumi.Input<List<NatFirewallNatRouteEntryList>> natRouteEntryLists;
  /// NAT firewall name.
  final pulumi.Input<String> proxyName;
  /// Region.
  final pulumi.Input<String> regionNo;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// Whether strict mode is enabled 1-Enable strict mode 0-Disable strict mode.
  final pulumi.Input<int>? strictMode;
  /// The ID of the VPC instance.
  final pulumi.Input<String> vpcId;
  /// Whether to use switch automatic mode. Value: **true**: Use automatic mode: **false**: Use manual mode.
  final pulumi.Input<String>? vswitchAuto;
  /// The network segment of the virtual switch. Required for Switch automatic mode.
  final pulumi.Input<String>? vswitchCidr;
  /// The switch ID. Required for switch manual mode.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [NatFirewallArgs].
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
  NatFirewallArgs({
    String? firewallSwitch,
    String? lang,
    required String natGatewayId,
    required List<NatFirewallNatRouteEntryList> natRouteEntryLists,
    required String proxyName,
    required String regionNo,
    String? status,
    int? strictMode,
    required String vpcId,
    String? vswitchAuto,
    String? vswitchCidr,
    String? vswitchId,
  }) :
      firewallSwitch = pulumi.Input.asOptionalInput<String>(firewallSwitch),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      natGatewayId = pulumi.Input.asInput<String>(natGatewayId),
      natRouteEntryLists = pulumi.Input.asInput<List<NatFirewallNatRouteEntryList>>(natRouteEntryLists),
      proxyName = pulumi.Input.asInput<String>(proxyName),
      regionNo = pulumi.Input.asInput<String>(regionNo),
      status = pulumi.Input.asOptionalInput<String>(status),
      strictMode = pulumi.Input.asOptionalInput<int>(strictMode),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vswitchAuto = pulumi.Input.asOptionalInput<String>(vswitchAuto),
      vswitchCidr = pulumi.Input.asOptionalInput<String>(vswitchCidr),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallSwitch': ?firewallSwitch,
      'lang': ?lang,
      'natGatewayId': natGatewayId,
      'natRouteEntryLists': pulumi.Input.mapInputValue<List<NatFirewallNatRouteEntryList>, List<Map<String, dynamic>>>(natRouteEntryLists, (value) => pulumi.Input.encodeList<NatFirewallNatRouteEntryList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'proxyName': proxyName,
      'regionNo': regionNo,
      'status': ?status,
      'strictMode': ?strictMode,
      'vpcId': vpcId,
      'vswitchAuto': ?vswitchAuto,
      'vswitchCidr': ?vswitchCidr,
      'vswitchId': ?vswitchId,
    };
  }

  factory NatFirewallArgs.fromMap(Map<String, dynamic> map) {
    return NatFirewallArgs(
      firewallSwitch: map['firewallSwitch'] == null ? null : map['firewallSwitch'] as String,
      lang: map['lang'] == null ? null : map['lang'] as String,
      natGatewayId: map['natGatewayId'] as String,
      natRouteEntryLists: pulumi.Input.decodeList<NatFirewallNatRouteEntryList>(map['natRouteEntryLists'], (value) => NatFirewallNatRouteEntryList.fromMap((value as Map).cast<String, dynamic>())),
      proxyName: map['proxyName'] as String,
      regionNo: map['regionNo'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      strictMode: map['strictMode'] == null ? null : map['strictMode'] as int,
      vpcId: map['vpcId'] as String,
      vswitchAuto: map['vswitchAuto'] == null ? null : map['vswitchAuto'] as String,
      vswitchCidr: map['vswitchCidr'] == null ? null : map['vswitchCidr'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
    );
  }
}

