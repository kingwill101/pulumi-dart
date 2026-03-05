// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a NAT rule.
class AzureFirewallNatRuleResponse {
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

  /// Creates a new [AzureFirewallNatRuleResponse].
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
  AzureFirewallNatRuleResponse({
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

  factory AzureFirewallNatRuleResponse.fromMap(Map<String, dynamic> map) {
    return AzureFirewallNatRuleResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationAddresses: (() { final guardedValue = map['destinationAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinationPorts: (() { final guardedValue = map['destinationPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protocols: (() { final guardedValue = map['protocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceAddresses: (() { final guardedValue = map['sourceAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sourceIpGroups: (() { final guardedValue = map['sourceIpGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      translatedAddress: (() { final guardedValue = map['translatedAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      translatedFqdn: (() { final guardedValue = map['translatedFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      translatedPort: (() { final guardedValue = map['translatedPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

