// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_firewall_application_rule_protocol.dart';

/// Properties of an application rule.
class AzureFirewallApplicationRule {
  /// Description of the rule.
  final String? description;
  /// List of FQDN Tags for this rule.
  final List<String>? fqdnTags;
  /// Name of the application rule.
  final String? name;
  /// Array of ApplicationRuleProtocols.
  final List<AzureFirewallApplicationRuleProtocol>? protocols;
  /// List of source IP addresses for this rule.
  final List<String>? sourceAddresses;
  /// List of source IpGroups for this rule.
  final List<String>? sourceIpGroups;
  /// List of FQDNs for this rule.
  final List<String>? targetFqdns;

  /// Creates a new [AzureFirewallApplicationRule].
  /// [description] Description of the rule.
  /// [fqdnTags] List of FQDN Tags for this rule.
  /// [name] Name of the application rule.
  /// [protocols] Array of ApplicationRuleProtocols.
  /// [sourceAddresses] List of source IP addresses for this rule.
  /// [sourceIpGroups] List of source IpGroups for this rule.
  /// [targetFqdns] List of FQDNs for this rule.
  AzureFirewallApplicationRule({
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
      'protocols': ?protocols == null ? null : pulumi.Input.encodeList<AzureFirewallApplicationRuleProtocol, Map<String, dynamic>>(protocols!, (value) => value.toMap()),
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
      'targetFqdns': ?targetFqdns,
    };
  }

  factory AzureFirewallApplicationRule.fromMap(Map<String, dynamic> map) {
    return AzureFirewallApplicationRule(
      description: map['description'] == null ? null : map['description'] as String,
      fqdnTags: map['fqdnTags'] == null ? null : (map['fqdnTags'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      protocols: map['protocols'] == null ? null : pulumi.Input.decodeList<AzureFirewallApplicationRuleProtocol>(map['protocols'], (value) => AzureFirewallApplicationRuleProtocol.fromMap((value as Map).cast<String, dynamic>())),
      sourceAddresses: map['sourceAddresses'] == null ? null : (map['sourceAddresses'] as List).cast<String>(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : (map['sourceIpGroups'] as List).cast<String>(),
      targetFqdns: map['targetFqdns'] == null ? null : (map['targetFqdns'] as List).cast<String>(),
    );
  }
}

