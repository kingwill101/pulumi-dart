// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_firewall_application_rule_protocol.dart';

/// Properties of an application rule.
class AzureFirewallApplicationRule {
  /// Description of the rule.
  final pulumi.Input<String?>? description;
  /// List of FQDN Tags for this rule.
  final pulumi.Input<List<String>?>? fqdnTags;
  /// Name of the application rule.
  final pulumi.Input<String?>? name;
  /// Array of ApplicationRuleProtocols.
  final pulumi.Input<List<AzureFirewallApplicationRuleProtocol>?>? protocols;
  /// List of source IP addresses for this rule.
  final pulumi.Input<List<String>?>? sourceAddresses;
  /// List of source IpGroups for this rule.
  final pulumi.Input<List<String>?>? sourceIpGroups;
  /// List of FQDNs for this rule.
  final pulumi.Input<List<String>?>? targetFqdns;

  /// Creates a new [AzureFirewallApplicationRule].
  /// [description] Description of the rule.
  /// [fqdnTags] List of FQDN Tags for this rule.
  /// [name] Name of the application rule.
  /// [protocols] Array of ApplicationRuleProtocols.
  /// [sourceAddresses] List of source IP addresses for this rule.
  /// [sourceIpGroups] List of source IpGroups for this rule.
  /// [targetFqdns] List of FQDNs for this rule.
  const AzureFirewallApplicationRule({
    this.description,
    this.fqdnTags,
    this.name,
    this.protocols,
    this.sourceAddresses,
    this.sourceIpGroups,
    this.targetFqdns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'fqdnTags': ?fqdnTags,
      'name': ?name,
      'protocols': ?pulumi.Input.mapOptionalInputValue<List<AzureFirewallApplicationRuleProtocol>, List<Map<String, dynamic>>>(protocols, (value) => pulumi.Input.encodeList<AzureFirewallApplicationRuleProtocol, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
      'targetFqdns': ?targetFqdns,
    };
  }

  factory AzureFirewallApplicationRule.fromMap(Map<String, dynamic> map) {
    return AzureFirewallApplicationRule(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fqdnTags: (() { final guardedValue = map['fqdnTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AzureFirewallApplicationRuleProtocol>(guardedValue, (value) => AzureFirewallApplicationRuleProtocol.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sourceAddresses: (() { final guardedValue = map['sourceAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceIpGroups: (() { final guardedValue = map['sourceIpGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetFqdns: (() { final guardedValue = map['targetFqdns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
