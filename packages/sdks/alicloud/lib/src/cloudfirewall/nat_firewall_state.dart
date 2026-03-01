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
    pulumi.Output<String>? firewallSwitch,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? natGatewayId,
    pulumi.Output<List<NatFirewallNatRouteEntryList>>? natRouteEntryLists,
    pulumi.Output<String>? proxyName,
    pulumi.Output<String>? regionNo,
    pulumi.Output<String>? status,
    pulumi.Output<int>? strictMode,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchAuto,
    pulumi.Output<String>? vswitchCidr,
    pulumi.Output<String>? vswitchId,
  }) :
      firewallSwitch = pulumi.Input.asOptionalInput<String>(firewallSwitch),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      natGatewayId = pulumi.Input.asOptionalInput<String>(natGatewayId),
      natRouteEntryLists = pulumi.Input.asOptionalInput<List<NatFirewallNatRouteEntryList>>(natRouteEntryLists),
      proxyName = pulumi.Input.asOptionalInput<String>(proxyName),
      regionNo = pulumi.Input.asOptionalInput<String>(regionNo),
      status = pulumi.Input.asOptionalInput<String>(status),
      strictMode = pulumi.Input.asOptionalInput<int>(strictMode),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchAuto = pulumi.Input.asOptionalInput<String>(vswitchAuto),
      vswitchCidr = pulumi.Input.asOptionalInput<String>(vswitchCidr),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

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
      firewallSwitch: map['firewallSwitch'] == null ? null : pulumi.Output.create<String>(map['firewallSwitch'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      natGatewayId: map['natGatewayId'] == null ? null : pulumi.Output.create<String>(map['natGatewayId'] as String),
      natRouteEntryLists: map['natRouteEntryLists'] == null ? null : pulumi.Output.create<List<NatFirewallNatRouteEntryList>>(pulumi.Input.decodeList<NatFirewallNatRouteEntryList>(map['natRouteEntryLists'], (value) => NatFirewallNatRouteEntryList.fromMap((value as Map).cast<String, dynamic>()))),
      proxyName: map['proxyName'] == null ? null : pulumi.Output.create<String>(map['proxyName'] as String),
      regionNo: map['regionNo'] == null ? null : pulumi.Output.create<String>(map['regionNo'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      strictMode: map['strictMode'] == null ? null : pulumi.Output.create<int>(map['strictMode'] as int),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchAuto: map['vswitchAuto'] == null ? null : pulumi.Output.create<String>(map['vswitchAuto'] as String),
      vswitchCidr: map['vswitchCidr'] == null ? null : pulumi.Output.create<String>(map['vswitchCidr'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

