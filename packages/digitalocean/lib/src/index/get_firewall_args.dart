// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_inbound_rule.dart';
import 'get_firewall_outbound_rule.dart';

/// {@template pulumi_index_get_firewall_get_firewall_args_doc}
/// Arguments for getFirewall.
/// {@endtemplate}
/// {@macro pulumi_index_get_firewall_get_firewall_args_doc}
class GetFirewallArgs {
  /// The list of the IDs of the Droplets assigned to
  /// the Firewall.
  final pulumi.Input<List<int>>? dropletIds;
  /// The ID of the firewall to retrieve information
  /// about.
  final pulumi.Input<String> firewallId;
  final pulumi.Input<List<GetFirewallInboundRule>>? inboundRules;
  final pulumi.Input<List<GetFirewallOutboundRule>>? outboundRules;
  /// The names of the Tags assigned to the Firewall.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [GetFirewallArgs].
  /// [dropletIds] The list of the IDs of the Droplets assigned to
  /// [firewallId] The ID of the firewall to retrieve information
  /// [inboundRules] Optional.
  /// [outboundRules] Optional.
  /// [tags] The names of the Tags assigned to the Firewall.
  GetFirewallArgs({
    List<int>? dropletIds,
    required String firewallId,
    List<GetFirewallInboundRule>? inboundRules,
    List<GetFirewallOutboundRule>? outboundRules,
    List<String>? tags,
  }) :
      dropletIds = pulumi.Input.asOptionalInput<List<int>>(dropletIds),
      firewallId = pulumi.Input.asInput<String>(firewallId),
      inboundRules = pulumi.Input.asOptionalInput<List<GetFirewallInboundRule>>(inboundRules),
      outboundRules = pulumi.Input.asOptionalInput<List<GetFirewallOutboundRule>>(outboundRules),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletIds': ?dropletIds,
      'firewallId': firewallId,
      'inboundRules': ?pulumi.Input.mapOptionalInputValue<List<GetFirewallInboundRule>, List<Map<String, dynamic>>>(inboundRules, (value) => pulumi.Input.encodeList<GetFirewallInboundRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outboundRules': ?pulumi.Input.mapOptionalInputValue<List<GetFirewallOutboundRule>, List<Map<String, dynamic>>>(outboundRules, (value) => pulumi.Input.encodeList<GetFirewallOutboundRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory GetFirewallArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallArgs(
      dropletIds: map['dropletIds'] == null ? null : (map['dropletIds'] as List).cast<int>(),
      firewallId: map['firewallId'] as String,
      inboundRules: map['inboundRules'] == null ? null : pulumi.Input.decodeList<GetFirewallInboundRule>(map['inboundRules'], (value) => GetFirewallInboundRule.fromMap((value as Map).cast<String, dynamic>())),
      outboundRules: map['outboundRules'] == null ? null : pulumi.Input.decodeList<GetFirewallOutboundRule>(map['outboundRules'], (value) => GetFirewallOutboundRule.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}

