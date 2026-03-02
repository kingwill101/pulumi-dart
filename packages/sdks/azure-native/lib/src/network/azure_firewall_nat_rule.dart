// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a NAT rule.
class AzureFirewallNatRule {
  /// Description of the rule.
  final pulumi.Input<String>? description;
  /// List of destination IP addresses for this rule. Supports IP ranges, prefixes, and service tags.
  final pulumi.Input<List<String>>? destinationAddresses;
  /// List of destination ports.
  final pulumi.Input<List<String>>? destinationPorts;
  /// Name of the NAT rule.
  final pulumi.Input<String>? name;
  /// Array of AzureFirewallNetworkRuleProtocols applicable to this NAT rule.
  final pulumi.Input<List<String>>? protocols;
  /// List of source IP addresses for this rule.
  final pulumi.Input<List<String>>? sourceAddresses;
  /// List of source IpGroups for this rule.
  final pulumi.Input<List<String>>? sourceIpGroups;
  /// The translated address for this NAT rule.
  final pulumi.Input<String>? translatedAddress;
  /// The translated FQDN for this NAT rule.
  final pulumi.Input<String>? translatedFqdn;
  /// The translated port for this NAT rule.
  final pulumi.Input<String>? translatedPort;

  /// Creates a new [AzureFirewallNatRule].
  /// [description] Description of the rule.
  /// [destinationAddresses] List of destination IP addresses for this rule. Supports IP ranges, prefixes, and service tags.
  /// [destinationPorts] List of destination ports.
  /// [name] Name of the NAT rule.
  /// [protocols] Array of AzureFirewallNetworkRuleProtocols applicable to this NAT rule.
  /// [sourceAddresses] List of source IP addresses for this rule.
  /// [sourceIpGroups] List of source IpGroups for this rule.
  /// [translatedAddress] The translated address for this NAT rule.
  /// [translatedFqdn] The translated FQDN for this NAT rule.
  /// [translatedPort] The translated port for this NAT rule.
  AzureFirewallNatRule({
    this.description,
    this.destinationAddresses,
    this.destinationPorts,
    this.name,
    this.protocols,
    this.sourceAddresses,
    this.sourceIpGroups,
    this.translatedAddress,
    this.translatedFqdn,
    this.translatedPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'destinationAddresses': ?destinationAddresses,
      'destinationPorts': ?destinationPorts,
      'name': ?name,
      'protocols': ?protocols,
      'sourceAddresses': ?sourceAddresses,
      'sourceIpGroups': ?sourceIpGroups,
      'translatedAddress': ?translatedAddress,
      'translatedFqdn': ?translatedFqdn,
      'translatedPort': ?translatedPort,
    };
  }

  factory AzureFirewallNatRule.fromMap(Map<String, dynamic> map) {
    return AzureFirewallNatRule(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      destinationAddresses: map['destinationAddresses'] == null ? null : ((map['destinationAddresses']! as List).cast<String>()).input(),
      destinationPorts: map['destinationPorts'] == null ? null : ((map['destinationPorts']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      protocols: map['protocols'] == null ? null : ((map['protocols']! as List).cast<String>()).input(),
      sourceAddresses: map['sourceAddresses'] == null ? null : ((map['sourceAddresses']! as List).cast<String>()).input(),
      sourceIpGroups: map['sourceIpGroups'] == null ? null : ((map['sourceIpGroups']! as List).cast<String>()).input(),
      translatedAddress: map['translatedAddress'] == null ? null : (map['translatedAddress']! as String).input(),
      translatedFqdn: map['translatedFqdn'] == null ? null : (map['translatedFqdn']! as String).input(),
      translatedPort: map['translatedPort'] == null ? null : (map['translatedPort']! as String).input(),
    );
  }
}

