// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_dns_server.dart';

/// {@template pulumi_dnsresolver_forwarding_rule_args_doc}
/// The set of arguments for ForwardingRule.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_forwarding_rule_args_doc}
class ForwardingRuleArgs {
  /// The name of the DNS forwarding ruleset.
  final pulumi.Input<String> dnsForwardingRulesetName;
  /// The domain name for the forwarding rule.
  final pulumi.Input<String> domainName;
  /// The name of the forwarding rule.
  final pulumi.Input<String>? forwardingRuleName;
  /// The state of forwarding rule.
  final pulumi.Input<String>? forwardingRuleState;
  /// Metadata attached to the forwarding rule.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// DNS servers to forward the DNS query to.
  final pulumi.Input<List<TargetDnsServer>> targetDnsServers;

  /// Creates a new [ForwardingRuleArgs].
  /// [dnsForwardingRulesetName] The name of the DNS forwarding ruleset.
  /// [domainName] The domain name for the forwarding rule.
  /// [forwardingRuleName] The name of the forwarding rule.
  /// [forwardingRuleState] The state of forwarding rule.
  /// [metadata] Metadata attached to the forwarding rule.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [targetDnsServers] DNS servers to forward the DNS query to.
  ForwardingRuleArgs({
    required String dnsForwardingRulesetName,
    required String domainName,
    String? forwardingRuleName,
    String? forwardingRuleState,
    Map<String, String>? metadata,
    required String resourceGroupName,
    required List<TargetDnsServer> targetDnsServers,
  }) :
      dnsForwardingRulesetName = pulumi.Input.asInput<String>(dnsForwardingRulesetName),
      domainName = pulumi.Input.asInput<String>(domainName),
      forwardingRuleName = pulumi.Input.asOptionalInput<String>(forwardingRuleName),
      forwardingRuleState = pulumi.Input.asOptionalInput<String>(forwardingRuleState),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      targetDnsServers = pulumi.Input.asInput<List<TargetDnsServer>>(targetDnsServers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsForwardingRulesetName': dnsForwardingRulesetName,
      'domainName': domainName,
      'forwardingRuleName': ?forwardingRuleName,
      'forwardingRuleState': ?forwardingRuleState,
      'metadata': ?metadata,
      'resourceGroupName': resourceGroupName,
      'targetDnsServers': pulumi.Input.mapInputValue<List<TargetDnsServer>, List<Map<String, dynamic>>>(targetDnsServers, (value) => pulumi.Input.encodeList<TargetDnsServer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ForwardingRuleArgs.fromMap(Map<String, dynamic> map) {
    return ForwardingRuleArgs(
      dnsForwardingRulesetName: map['dnsForwardingRulesetName'] as String,
      domainName: map['domainName'] as String,
      forwardingRuleName: map['forwardingRuleName'] == null ? null : map['forwardingRuleName'] as String,
      forwardingRuleState: map['forwardingRuleState'] == null ? null : map['forwardingRuleState'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      targetDnsServers: pulumi.Input.decodeList<TargetDnsServer>(map['targetDnsServers'], (value) => TargetDnsServer.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

