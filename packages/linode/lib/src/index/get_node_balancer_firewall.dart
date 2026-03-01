// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_balancer_firewall_inbound.dart';
import 'get_node_balancer_firewall_outbound.dart';

class GetNodeBalancerFirewall {
  /// When this firewall was created.
  final String created;
  /// The NodeBalancer's ID.
  final int id;
  /// The default behavior for inbound traffic. (`ACCEPT`, `DROP`)
  final String inboundPolicy;
  /// A set of firewall rules that specify what inbound network traffic is allowed.
  final List<GetNodeBalancerFirewallInbound> inbounds;
  /// Used to identify this rule. For display purposes only.
  final String label;
  /// The default behavior for outbound traffic. (`ACCEPT`, `DROP`)
  final String outboundPolicy;
  /// A set of firewall rules that specify what outbound network traffic is allowed.
  final List<GetNodeBalancerFirewallOutbound> outbounds;
  /// The status of the firewall. (`enabled`, `disabled`, `deleted`)
  final String status;
  /// The tags applied to the firewall. Tags are case-insensitive and are for organizational purposes only.
  final List<String> tags;
  /// When this firewall was last updated.
  final String updated;

  /// Creates a new [GetNodeBalancerFirewall].
  /// [created] When this firewall was created.
  /// [id] The NodeBalancer's ID.
  /// [inboundPolicy] The default behavior for inbound traffic. (`ACCEPT`, `DROP`)
  /// [inbounds] A set of firewall rules that specify what inbound network traffic is allowed.
  /// [label] Used to identify this rule. For display purposes only.
  /// [outboundPolicy] The default behavior for outbound traffic. (`ACCEPT`, `DROP`)
  /// [outbounds] A set of firewall rules that specify what outbound network traffic is allowed.
  /// [status] The status of the firewall. (`enabled`, `disabled`, `deleted`)
  /// [tags] The tags applied to the firewall. Tags are case-insensitive and are for organizational purposes only.
  /// [updated] When this firewall was last updated.
  GetNodeBalancerFirewall({
    required this.created,
    required this.id,
    required this.inboundPolicy,
    required this.inbounds,
    required this.label,
    required this.outboundPolicy,
    required this.outbounds,
    required this.status,
    required this.tags,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'id': id,
      'inboundPolicy': inboundPolicy,
      'inbounds': pulumi.Input.encodeList<GetNodeBalancerFirewallInbound, Map<String, dynamic>>(inbounds, (value) => value.toMap()),
      'label': label,
      'outboundPolicy': outboundPolicy,
      'outbounds': pulumi.Input.encodeList<GetNodeBalancerFirewallOutbound, Map<String, dynamic>>(outbounds, (value) => value.toMap()),
      'status': status,
      'tags': tags,
      'updated': updated,
    };
  }

  factory GetNodeBalancerFirewall.fromMap(Map<String, dynamic> map) {
    return GetNodeBalancerFirewall(
      created: map['created'] as String,
      id: map['id'] as int,
      inboundPolicy: map['inboundPolicy'] as String,
      inbounds: pulumi.Input.decodeList<GetNodeBalancerFirewallInbound>(map['inbounds'], (value) => GetNodeBalancerFirewallInbound.fromMap((value as Map).cast<String, dynamic>())),
      label: map['label'] as String,
      outboundPolicy: map['outboundPolicy'] as String,
      outbounds: pulumi.Input.decodeList<GetNodeBalancerFirewallOutbound>(map['outbounds'], (value) => GetNodeBalancerFirewallOutbound.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      tags: (map['tags'] as List).cast<String>(),
      updated: map['updated'] as String,
    );
  }
}

