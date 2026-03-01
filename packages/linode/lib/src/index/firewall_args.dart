// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_inbound.dart';
import 'firewall_outbound.dart';

/// {@template pulumi_index_firewall_firewall_args_doc}
/// The set of arguments for Firewall.
/// {@endtemplate}
/// {@macro pulumi_index_firewall_firewall_args_doc}
class FirewallArgs {
  /// If `true`, the Firewall's rules are not enforced (defaults to `false`).
  ///
  /// * `inbound` - (Optional) A firewall rule that specifies what inbound network traffic is allowed.
  final pulumi.Input<bool>? disabled;
  /// The default behavior for inbound traffic. This setting can be overridden by updating the inbound.action property of the Firewall Rule. (`ACCEPT`, `DROP`)
  ///
  /// * `outbound` - (Optional) A firewall rule that specifies what outbound network traffic is allowed.
  final pulumi.Input<String> inboundPolicy;
  /// A firewall rule that specifies what inbound network traffic is allowed.
  final pulumi.Input<List<FirewallInbound>>? inbounds;
  /// A list of IDs of Linode Interfaces this Firewall should govern network traffic for.
  final pulumi.Input<List<int>>? interfaces;
  /// This Firewall's unique label.
  final pulumi.Input<String> label;
  /// A list of IDs of Linodes this Firewall should govern network traffic for.
  final pulumi.Input<List<int>>? linodes;
  /// A list of IDs of NodeBalancers this Firewall should govern network traffic for.
  final pulumi.Input<List<int>>? nodebalancers;
  /// The default behavior for outbound traffic. This setting can be overridden by updating the outbound.action property for an individual Firewall Rule. (`ACCEPT`, `DROP`)
  final pulumi.Input<String> outboundPolicy;
  /// A firewall rule that specifies what outbound network traffic is allowed.
  final pulumi.Input<List<FirewallOutbound>>? outbounds;
  /// A list of tags applied to the Kubernetes cluster. Tags are case-insensitive and are for organizational purposes only.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [FirewallArgs].
  /// [disabled] If `true`, the Firewall's rules are not enforced (defaults to `false`).
  /// [inboundPolicy] The default behavior for inbound traffic. This setting can be overridden by updating the inbound.action property of the Firewall Rule. (`ACCEPT`, `DROP`)
  /// [inbounds] A firewall rule that specifies what inbound network traffic is allowed.
  /// [interfaces] A list of IDs of Linode Interfaces this Firewall should govern network traffic for.
  /// [label] This Firewall's unique label.
  /// [linodes] A list of IDs of Linodes this Firewall should govern network traffic for.
  /// [nodebalancers] A list of IDs of NodeBalancers this Firewall should govern network traffic for.
  /// [outboundPolicy] The default behavior for outbound traffic. This setting can be overridden by updating the outbound.action property for an individual Firewall Rule. (`ACCEPT`, `DROP`)
  /// [outbounds] A firewall rule that specifies what outbound network traffic is allowed.
  /// [tags] A list of tags applied to the Kubernetes cluster. Tags are case-insensitive and are for organizational purposes only.
  FirewallArgs({
    bool? disabled,
    required String inboundPolicy,
    List<FirewallInbound>? inbounds,
    List<int>? interfaces,
    required String label,
    List<int>? linodes,
    List<int>? nodebalancers,
    required String outboundPolicy,
    List<FirewallOutbound>? outbounds,
    List<String>? tags,
  }) :
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      inboundPolicy = pulumi.Input.asInput<String>(inboundPolicy),
      inbounds = pulumi.Input.asOptionalInput<List<FirewallInbound>>(inbounds),
      interfaces = pulumi.Input.asOptionalInput<List<int>>(interfaces),
      label = pulumi.Input.asInput<String>(label),
      linodes = pulumi.Input.asOptionalInput<List<int>>(linodes),
      nodebalancers = pulumi.Input.asOptionalInput<List<int>>(nodebalancers),
      outboundPolicy = pulumi.Input.asInput<String>(outboundPolicy),
      outbounds = pulumi.Input.asOptionalInput<List<FirewallOutbound>>(outbounds),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'inboundPolicy': inboundPolicy,
      'inbounds': ?pulumi.Input.mapOptionalInputValue<List<FirewallInbound>, List<Map<String, dynamic>>>(inbounds, (value) => pulumi.Input.encodeList<FirewallInbound, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interfaces': ?interfaces,
      'label': label,
      'linodes': ?linodes,
      'nodebalancers': ?nodebalancers,
      'outboundPolicy': outboundPolicy,
      'outbounds': ?pulumi.Input.mapOptionalInputValue<List<FirewallOutbound>, List<Map<String, dynamic>>>(outbounds, (value) => pulumi.Input.encodeList<FirewallOutbound, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory FirewallArgs.fromMap(Map<String, dynamic> map) {
    return FirewallArgs(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      inboundPolicy: map['inboundPolicy'] as String,
      inbounds: map['inbounds'] == null ? null : pulumi.Input.decodeList<FirewallInbound>(map['inbounds'], (value) => FirewallInbound.fromMap((value as Map).cast<String, dynamic>())),
      interfaces: map['interfaces'] == null ? null : (map['interfaces'] as List).cast<int>(),
      label: map['label'] as String,
      linodes: map['linodes'] == null ? null : (map['linodes'] as List).cast<int>(),
      nodebalancers: map['nodebalancers'] == null ? null : (map['nodebalancers'] as List).cast<int>(),
      outboundPolicy: map['outboundPolicy'] as String,
      outbounds: map['outbounds'] == null ? null : pulumi.Input.decodeList<FirewallOutbound>(map['outbounds'], (value) => FirewallOutbound.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}

